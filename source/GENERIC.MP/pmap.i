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
struct mdproc {
 struct trapframe64 *md_tf;
 struct fpstate64 *md_fpstate;
 volatile int md_astpending;
};
struct kevent {
 __uintptr_t ident;
 short filter;
 unsigned short flags;
 unsigned int fflags;
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
void timeout_barrier(struct timeout *);
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
 uint64_t ps_execpledge;
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
 u_int p_spserial;
 vaddr_t p_spstart;
 vaddr_t p_spend;
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
void uid_release(struct uidinfo *);
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
void enternewpgrp(struct process *, struct pgrp *, struct session *);
void enterthispgrp(struct process *, struct pgrp *);
int inferior(struct process *, struct process *);
void leavepgrp(struct process *);
void killjobc(struct process *);
void preempt(void);
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
struct cond {
 int c_wait;
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
struct msgbuf {
 long msg_magic;
 long msg_bufx;
 long msg_bufr;
 long msg_bufs;
 long msg_bufl;
 long msg_bufd;
 char msg_bufc[1];
};
extern struct msgbuf *msgbufp;
extern struct msgbuf *consbufp;
void initmsgbuf(caddr_t buf, size_t bufsize);
void initconsbuf(void);
void msgbuf_putchar(struct msgbuf *, const char c);
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
struct ps_strings {
 char **ps_argvstr;
 int ps_nargvstr;
 char **ps_envstr;
 int ps_nenvstr;
};
struct proc;
struct exec_package;
typedef int (*exec_makecmds_fcn)(struct proc *, struct exec_package *);
struct execsw {
 u_int es_hdrsz;
 exec_makecmds_fcn es_check;
 struct emul *es_emul;
};
struct exec_vmcmd {
 int (*ev_proc)(struct proc *p, struct exec_vmcmd *cmd);
 u_long ev_len;
 u_long ev_addr;
 struct vnode *ev_vp;
 u_long ev_offset;
 u_int ev_prot;
 int ev_flags;
};
struct exec_vmcmd_set {
 u_int evs_cnt;
 u_int evs_used;
 struct exec_vmcmd *evs_cmds;
 struct exec_vmcmd evs_start[8];
};
struct exec_package {
 char *ep_name;
 void *ep_hdr;
 u_int ep_hdrlen;
 u_int ep_hdrvalid;
 struct nameidata *ep_ndp;
 struct exec_vmcmd_set ep_vmcmds;
 struct vnode *ep_vp;
 struct vattr *ep_vap;
 u_long ep_taddr;
 u_long ep_tsize;
 u_long ep_daddr;
 u_long ep_dsize;
 u_long ep_maxsaddr;
 u_long ep_minsaddr;
 u_long ep_ssize;
 u_long ep_entry;
 u_int ep_flags;
 char **ep_fa;
 int ep_fd;
 struct emul *ep_emul;
 void *ep_emul_arg;
 size_t ep_emul_argsize;
 void *ep_emul_argp;
 char *ep_interp;
};
int exec_makecmds(struct proc *, struct exec_package *);
int exec_runcmds(struct proc *, struct exec_package *);
void vmcmdset_extend(struct exec_vmcmd_set *);
void kill_vmcmds(struct exec_vmcmd_set *evsp);
int vmcmd_map_pagedvn(struct proc *, struct exec_vmcmd *);
int vmcmd_map_readvn(struct proc *, struct exec_vmcmd *);
int vmcmd_map_zero(struct proc *, struct exec_vmcmd *);
int vmcmd_randomize(struct proc *, struct exec_vmcmd *);
void *copyargs(struct exec_package *,
        struct ps_strings *,
        void *, void *);
void setregs(struct proc *, struct exec_package *,
        u_long, register_t *);
int check_exec(struct proc *, struct exec_package *);
int exec_setup_stack(struct proc *, struct exec_package *);
int exec_process_vmcmds(struct proc *, struct exec_package *);
extern struct execsw execsw[];
extern int nexecs;
extern int exec_maxhdrsz;
extern int stackgap_random;
struct exec {
 u_int32_t a_midmag;
 u_int32_t a_text;
 u_int32_t a_data;
 u_int32_t a_bss;
 u_int32_t a_syms;
 u_int32_t a_entry;
 u_int32_t a_trsize;
 u_int32_t a_drsize;
};
int coredump_write(void *, enum uio_seg, const void *, size_t);
void coredump_unmap(void *, vaddr_t, vaddr_t);
typedef struct {
 u_quad_t start;
 u_quad_t size;
} phys_ram_seg_t;
typedef struct kcore_hdr {
 u_int32_t c_midmag;
 u_int16_t c_hdrsize;
 u_int16_t c_seghdrsize;
 u_int32_t c_nseg;
} kcore_hdr_t;
typedef struct kcore_seg {
 u_int32_t c_midmag;
 u_int32_t c_size;
} kcore_seg_t;
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
struct pcb {
 u_int64_t pcb_sp;
 u_int64_t pcb_pc;
 caddr_t pcb_onfault;
 short pcb_pstate;
 char pcb_nsaved;
 char pcb_cwp;
 char pcb_pil;
 const char *lastcall;
 u_int64_t pcb_wcookie;
 struct rwindow64 pcb_rw[8];
 u_int64_t pcb_rwsp[8];
};
struct mem_region {
 u_int64_t start;
 u_int64_t size;
};
int prom_set_trap_table(vaddr_t tba, paddr_t mmfsa);
paddr_t prom_vtop(vaddr_t vaddr);
vaddr_t prom_claim_virt(vaddr_t vaddr, int len);
vaddr_t prom_alloc_virt(int len, int align);
int prom_free_virt(vaddr_t vaddr, int len);
int prom_unmap_virt(vaddr_t vaddr, int len);
int prom_map_phys(paddr_t paddr, off_t size, vaddr_t vaddr, int mode);
paddr_t prom_alloc_phys(int len, int align);
paddr_t prom_claim_phys(paddr_t phys, int len);
int prom_free_phys(paddr_t paddr, int len);
paddr_t prom_get_msgbuf(int len, int align);
int prom_itlb_load(int index, u_int64_t data, vaddr_t vaddr);
int prom_dtlb_load(int index, u_int64_t data, vaddr_t vaddr);
void prom_start_cpu(int cpu, void *func, long arg);
void prom_start_cpu_by_cpuid(int cpu, void *func, long arg);
const char *prom_serengeti_set_console_input(const char *);
time_t prom_opl_get_tod(void);
uint64_t prom_set_sun4v_api_version(uint64_t, uint64_t, uint64_t, uint64_t *);
void prom_sun4v_soft_state_supported(void);
void prom_printf(const char *, ...);
int64_t hv_api_get_version(uint64_t api_group,
     uint64_t *major_number, uint64_t *minor_number);
int64_t hv_mach_desc(paddr_t buffer, psize_t *length);
void hv_cpu_yield(void);
int64_t hv_cpu_qconf(uint64_t queue, uint64_t base, uint64_t nentries);
int64_t hv_cpu_mondo_send(uint64_t ncpus, paddr_t cpulist, paddr_t data);
int64_t hv_cpu_myid(uint64_t *cpuid);
int64_t hv_mmu_demap_page(vaddr_t vaddr, uint64_t context, uint64_t flags);
int64_t hv_mmu_demap_ctx(uint64_t context, uint64_t flags);
int64_t hv_mmu_demap_all(uint64_t flags);
int64_t hv_mmu_map_perm_addr(vaddr_t vaddr, uint64_t tte, uint64_t flags);
int64_t hv_mmu_unmap_perm_addr(vaddr_t vaddr, uint64_t flags);
int64_t hv_mmu_map_addr(vaddr_t vaddr, uint64_t context, uint64_t tte,
     uint64_t flags);
int64_t hv_mmu_unmap_addr(vaddr_t vaddr, uint64_t context, uint64_t flags);
struct tsb_desc {
 uint16_t td_idxpgsz;
 uint16_t td_assoc;
 uint32_t td_size;
 uint32_t td_ctxidx;
 uint32_t td_pgsz;
 paddr_t td_pa;
 uint64_t td_reserved;
};
int64_t hv_mmu_tsb_ctx0(uint64_t ntsb, paddr_t tsbptr);
int64_t hv_mmu_tsb_ctxnon0(uint64_t ntsb, paddr_t tsbptr);
int64_t hv_mem_scrub(paddr_t raddr, psize_t length);
int64_t hv_mem_sync(paddr_t raddr, psize_t length);
int64_t hv_intr_devino_to_sysino(uint64_t devhandle, uint64_t devino,
     uint64_t *sysino);
int64_t hv_intr_getenabled(uint64_t sysino, uint64_t *intr_enabled);
int64_t hv_intr_setenabled(uint64_t sysino, uint64_t intr_enabled);
int64_t hv_intr_getstate(uint64_t sysino, uint64_t *intr_state);
int64_t hv_intr_setstate(uint64_t sysino, uint64_t intr_state);
int64_t hv_intr_gettarget(uint64_t sysino, uint64_t *cpuid);
int64_t hv_intr_settarget(uint64_t sysino, uint64_t cpuid);
int64_t hv_vintr_getcookie(uint64_t devhandle, uint64_t devino,
     uint64_t *cookie_value);
int64_t hv_vintr_setcookie(uint64_t devhandle, uint64_t devino,
     uint64_t cookie_value);
int64_t hv_vintr_getenabled(uint64_t devhandle, uint64_t devino,
     uint64_t *intr_enabled);
int64_t hv_vintr_setenabled(uint64_t devhandle, uint64_t devino,
     uint64_t intr_enabled);
int64_t hv_vintr_getstate(uint64_t devhandle, uint64_t devino,
     uint64_t *intr_state);
int64_t hv_vintr_setstate(uint64_t devhandle, uint64_t devino,
     uint64_t intr_state);
int64_t hv_vintr_gettarget(uint64_t devhandle, uint64_t devino,
     uint64_t *cpuid);
int64_t hv_vintr_settarget(uint64_t devhandle, uint64_t devino,
     uint64_t cpuid);
int64_t hv_tod_get(uint64_t *tod);
int64_t hv_tod_set(uint64_t tod);
int64_t hv_cons_getchar(int64_t *ch);
int64_t hv_cons_putchar(int64_t ch);
int64_t hv_api_putchar(int64_t ch);
int64_t hv_soft_state_set(uint64_t software_state,
     paddr_t software_description_ptr);
int64_t hv_pci_iommu_map(uint64_t devhandle, uint64_t tsbid,
     uint64_t nttes, uint64_t io_attributes, paddr_t io_page_list_p,
     uint64_t *nttes_mapped);
int64_t hv_pci_iommu_demap(uint64_t devhandle, uint64_t tsbid,
     uint64_t nttes, uint64_t *nttes_demapped);
int64_t hv_pci_iommu_getmap(uint64_t devhandle, uint64_t tsbid,
     uint64_t *io_attributes, paddr_t *r_addr);
int64_t hv_pci_iommu_getbypass(uint64_t devhandle, paddr_t r_addr,
     uint64_t io_attributes, uint64_t *io_addr);
int64_t hv_pci_config_get(uint64_t devhandle, uint64_t pci_device,
            uint64_t pci_config_offset, uint64_t size,
     uint64_t *error_flag, uint64_t *data);
int64_t hv_pci_config_put(uint64_t devhandle, uint64_t pci_device,
            uint64_t pci_config_offset, uint64_t size, uint64_t data,
     uint64_t *error_flag);
int64_t hv_pci_msiq_conf(uint64_t devhandle, uint64_t msiqid,
     uint64_t r_addr, uint64_t nentries);
int64_t hv_pci_msiq_info(uint64_t devhandle, uint64_t msiqid,
     uint64_t *r_addr, uint64_t *nentries);
int64_t hv_pci_msiq_getvalid(uint64_t devhandle, uint64_t msiqid,
     uint64_t *msiqvalid);
int64_t hv_pci_msiq_setvalid(uint64_t devhandle, uint64_t msiqid,
     uint64_t msiqvalid);
int64_t hv_pci_msiq_getstate(uint64_t devhandle, uint64_t msiqid,
     uint64_t *msiqstate);
int64_t hv_pci_msiq_setstate(uint64_t devhandle, uint64_t msiqid,
     uint64_t msiqstate);
int64_t hv_pci_msiq_gethead(uint64_t devhandle, uint64_t msiqid,
     uint64_t *msiqhead);
int64_t hv_pci_msiq_sethead(uint64_t devhandle, uint64_t msiqid,
     uint64_t msiqhead);
int64_t hv_pci_msiq_gettail(uint64_t devhandle, uint64_t msiqid,
     uint64_t *msiqtail);
int64_t hv_pci_msi_getvalid(uint64_t devhandle, uint64_t msinum,
     uint64_t *msivalidstate);
int64_t hv_pci_msi_setvalid(uint64_t devhandle, uint64_t msinum,
     uint64_t msivalidstate);
int64_t hv_pci_msi_getmsiq(uint64_t devhandle, uint64_t msinum,
     uint64_t *msiqid);
int64_t hv_pci_msi_setmsiq(uint64_t devhandle, uint64_t msinum,
     uint64_t msitype, uint64_t msiqid);
int64_t hv_pci_msi_getstate(uint64_t devhandle, uint64_t msinum,
     uint64_t *msistate);
int64_t hv_pci_msi_setstate(uint64_t devhandle, uint64_t msinum,
     uint64_t msistate);
int64_t hv_pci_msg_getmsiq(uint64_t devhandle, uint64_t msg,
     uint64_t *msiqid);
int64_t hv_pci_msg_setmsiq(uint64_t devhandle, uint64_t msg,
     uint64_t msiqid);
int64_t hv_pci_msg_getvalid(uint64_t devhandle, uint64_t msg,
     uint64_t *msgvalidstate);
int64_t hv_pci_msg_setvalid(uint64_t devhandle, uint64_t msg,
     uint64_t msgvalidstate);
int64_t hv_ldc_tx_qconf(uint64_t ldc_id, paddr_t base_raddr,
     uint64_t nentries);
int64_t hv_ldc_tx_qinfo(uint64_t ldc_id, paddr_t *base_raddr,
     uint64_t *nentries);
int64_t hv_ldc_tx_get_state(uint64_t ldc_id, uint64_t *head_offset,
     uint64_t *tail_offset, uint64_t *channel_state);
int64_t hv_ldc_tx_set_qtail(uint64_t ldc_id, uint64_t tail_offset);
int64_t hv_ldc_rx_qconf(uint64_t ldc_id, paddr_t base_raddr,
     uint64_t nentries);
int64_t hv_ldc_rx_qinfo(uint64_t ldc_id, paddr_t *base_raddr,
     uint64_t *nentries);
int64_t hv_ldc_rx_get_state(uint64_t ldc_id, uint64_t *head_offset,
     uint64_t *tail_offset, uint64_t *channel_state);
int64_t hv_ldc_rx_set_qhead(uint64_t ldc_id, uint64_t head_offset);
int64_t hv_ldc_set_map_table(uint64_t ldc_id, paddr_t base_raddr,
     uint64_t nentries);
int64_t hv_ldc_get_map_table(uint64_t ldc_id, paddr_t *base_raddr,
     uint64_t *nentries);
int64_t hv_ldc_copy(uint64_t ldc_id, uint64_t flags, uint64_t cookie,
     paddr_t raddr, psize_t length, psize_t *ret_length);
int64_t hv_ldc_mapin(uint64_t ldc_id, uint64_t cookie, paddr_t *raddr,
     uint64_t *perms);
int64_t hv_ldc_unmap(paddr_t raddr, uint64_t *perms);
int64_t hv_rng_get_diag_control(void);
int64_t hv_rng_ctl_read(paddr_t raddr, uint64_t *state, uint64_t *delta);
int64_t hv_rng_ctl_write(paddr_t raddr, uint64_t state, uint64_t timeout,
 uint64_t *delta);
int64_t hv_rng_data_read_diag(paddr_t raddr, uint64_t size, uint64_t *delta);
int64_t hv_rng_data_read(paddr_t raddr, uint64_t *delta);
extern uint64_t sun4v_group_interrupt_major;
int64_t sun4v_intr_devino_to_sysino(uint64_t, uint64_t, uint64_t *);
int64_t sun4v_intr_setcookie(uint64_t, uint64_t, uint64_t);
int64_t sun4v_intr_setenabled(uint64_t, uint64_t, uint64_t);
int64_t sun4v_intr_setstate(uint64_t, uint64_t, uint64_t);
int64_t sun4v_intr_settarget(uint64_t, uint64_t, uint64_t);
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
int openfirmware(void *);
extern char OF_buf[];
int OF_peer(int phandle);
int OF_child(int phandle);
int OF_parent(int phandle);
int OF_instance_to_package(int ihandle);
int OF_getproplen(int handle, char *prop);
int OF_getprop(int handle, char *prop, void *buf, int buflen);
uint32_t OF_getpropint(int handle, char *, uint32_t);
int OF_getpropintarray(int, char *, uint32_t *, int);
uint64_t OF_getpropint64(int handle, char *, uint64_t);
int OF_setprop(int, char *, const void *, int);
int OF_nextprop(int, char *, void *);
int OF_finddevice(char *name);
int OF_is_compatible(int, const char *);
int OF_instance_to_path(int ihandle, char *buf, int buflen);
int OF_package_to_path(int phandle, char *buf, int buflen);
int OF_call_method_1(char *method, int ihandle, int nargs, ...);
int OF_call_method(char *method, int ihandle, int nargs, int nreturns, ...);
int OF_open(char *dname);
void OF_close(int handle);
int OF_read(int handle, void *addr, int len);
int OF_write(int handle, void *addr, int len);
int OF_seek(int handle, u_quad_t pos);
void OF_boot(char *bootspec);
void OF_enter(void);
void OF_exit(void) __attribute__((__noreturn__));
int OF_interpret(char *cmd, int nreturns, ...);
int OF_getnodebyname(int, const char *);
int OF_getnodebyphandle(uint32_t);
int OF_getindex(int, const char *, const char *);
int ofnmmatch(char *cp1, char *cp2);
void ofw_intr_establish(void);
struct ofprobe {
 int phandle;
 int unit;
};
struct ofb_softc {
 struct device sc_dev;
 int sc_phandle;
 int sc_unit;
};
typedef u_int64_t cell_t;
int OF_test (char *service);
int OF_test_method (int handle, char *method);
int OF_getproplen (int handle, char *prop);
int OF_stdin (void);
int OF_stdout (void);
void OF_set_symbol_lookup (void (*s2v)(void *), void (*v2s)(void *));
void OF_poweroff (void);
void OF_sym2val (void *);
void OF_val2sym (void *);
int OF_milliseconds (void);
int OF_searchprop (int node, char *prop, void *buf, int buflen);
int OF_mapintr(int node, int *interrupt, int validlen, int buflen);
void (*OF_set_callback(void (*)(void *)))(void *);
typedef struct cpu_kcore_hdr {
 int cputype;
 int nmemseg;
 uint64_t memsegoffset;
 int nsegmap;
 uint64_t segmapoffset;
 uint64_t kernbase;
 uint64_t cpubase;
 uint64_t ktextbase;
 uint64_t ktextp;
 uint64_t ktextsz;
 uint64_t kdatabase;
 uint64_t kdatap;
 uint64_t kdatasz;
} cpu_kcore_hdr_t;
enum vactype { VAC_NONE, VAC_WRITETHROUGH, VAC_WRITEBACK };
extern enum vactype vactype;
void cache_enable(void);
int cache_flush_page(paddr_t);
int cache_flush(vaddr_t, vsize_t);
void us_dcache_flush_page(paddr_t);
void us3_dcache_flush_page(paddr_t);
void no_dcache_flush_page(paddr_t);
void cache_flush_virt(vaddr_t, vsize_t);
void cache_flush_phys(paddr_t, psize_t, int);
struct cacheinfo {
 void (*c_dcache_flush_page)(paddr_t);
 int c_totalsize;
 int c_enabled;
 int c_hwflush;
 int c_linesize;
 int c_l2linesize;
 int c_physical;
 int c_split;
 int ic_totalsize;
 int ic_enabled;
 int ic_linesize;
 int ic_l2linesize;
 int dc_totalsize;
 int dc_enabled;
 int dc_linesize;
 int dc_l2linesize;
 int ec_totalsize;
 int ec_enabled;
 int ec_linesize;
 int ec_l2linesize;
};
extern struct cacheinfo cacheinfo;
struct cachestats {
 int cs_npgflush;
 int cs_nraflush;
};
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
struct db_command;
void db_error(char *);
void db_skip_to_eol(void);
void db_command_loop(void);
void db_command(struct db_command **, struct db_command *);
void db_machine_commands_install(struct db_command *);
extern db_addr_t db_dot, db_last_addr, db_prev, db_next;
struct db_command {
 char *name;
 void (*fcn)(db_expr_t, int, db_expr_t, char *);
 int flag;
 struct db_command *more;
};
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
typedef __uint8_t Elf_Byte;
typedef __uint32_t Elf32_Addr;
typedef __uint32_t Elf32_Off;
typedef __int32_t Elf32_Sword;
typedef __uint32_t Elf32_Word;
typedef __uint16_t Elf32_Half;
typedef __uint64_t Elf64_Addr;
typedef __uint64_t Elf64_Off;
typedef __int32_t Elf64_Shalf;
typedef __int32_t Elf64_Sword;
typedef __uint32_t Elf64_Word;
typedef __int64_t Elf64_Sxword;
typedef __uint64_t Elf64_Xword;
typedef __uint32_t Elf64_Half;
typedef __uint16_t Elf64_Quarter;
typedef struct elfhdr {
 unsigned char e_ident[16];
 Elf32_Half e_type;
 Elf32_Half e_machine;
 Elf32_Word e_version;
 Elf32_Addr e_entry;
 Elf32_Off e_phoff;
 Elf32_Off e_shoff;
 Elf32_Word e_flags;
 Elf32_Half e_ehsize;
 Elf32_Half e_phentsize;
 Elf32_Half e_phnum;
 Elf32_Half e_shentsize;
 Elf32_Half e_shnum;
 Elf32_Half e_shstrndx;
} Elf32_Ehdr;
typedef struct {
 unsigned char e_ident[16];
 Elf64_Quarter e_type;
 Elf64_Quarter e_machine;
 Elf64_Half e_version;
 Elf64_Addr e_entry;
 Elf64_Off e_phoff;
 Elf64_Off e_shoff;
 Elf64_Half e_flags;
 Elf64_Quarter e_ehsize;
 Elf64_Quarter e_phentsize;
 Elf64_Quarter e_phnum;
 Elf64_Quarter e_shentsize;
 Elf64_Quarter e_shnum;
 Elf64_Quarter e_shstrndx;
} Elf64_Ehdr;
typedef struct {
 Elf32_Word sh_name;
 Elf32_Word sh_type;
 Elf32_Word sh_flags;
 Elf32_Addr sh_addr;
 Elf32_Off sh_offset;
 Elf32_Word sh_size;
 Elf32_Word sh_link;
 Elf32_Word sh_info;
 Elf32_Word sh_addralign;
 Elf32_Word sh_entsize;
} Elf32_Shdr;
typedef struct {
 Elf64_Half sh_name;
 Elf64_Half sh_type;
 Elf64_Xword sh_flags;
 Elf64_Addr sh_addr;
 Elf64_Off sh_offset;
 Elf64_Xword sh_size;
 Elf64_Half sh_link;
 Elf64_Half sh_info;
 Elf64_Xword sh_addralign;
 Elf64_Xword sh_entsize;
} Elf64_Shdr;
typedef struct elf32_sym {
 Elf32_Word st_name;
 Elf32_Addr st_value;
 Elf32_Word st_size;
 unsigned char st_info;
 unsigned char st_other;
 Elf32_Half st_shndx;
} Elf32_Sym;
typedef struct {
 Elf64_Half st_name;
 Elf_Byte st_info;
 Elf_Byte st_other;
 Elf64_Quarter st_shndx;
 Elf64_Xword st_value;
 Elf64_Xword st_size;
} Elf64_Sym;
typedef struct {
 Elf32_Addr r_offset;
 Elf32_Word r_info;
} Elf32_Rel;
typedef struct {
 Elf32_Addr r_offset;
 Elf32_Word r_info;
 Elf32_Sword r_addend;
} Elf32_Rela;
typedef struct {
 Elf64_Xword r_offset;
 Elf64_Xword r_info;
} Elf64_Rel;
typedef struct {
 Elf64_Xword r_offset;
 Elf64_Xword r_info;
 Elf64_Sxword r_addend;
} Elf64_Rela;
typedef struct {
 Elf32_Word p_type;
 Elf32_Off p_offset;
 Elf32_Addr p_vaddr;
 Elf32_Addr p_paddr;
 Elf32_Word p_filesz;
 Elf32_Word p_memsz;
 Elf32_Word p_flags;
 Elf32_Word p_align;
} Elf32_Phdr;
typedef struct {
 Elf64_Half p_type;
 Elf64_Half p_flags;
 Elf64_Off p_offset;
 Elf64_Addr p_vaddr;
 Elf64_Addr p_paddr;
 Elf64_Xword p_filesz;
 Elf64_Xword p_memsz;
 Elf64_Xword p_align;
} Elf64_Phdr;
typedef struct {
 Elf32_Sword d_tag;
 union {
  Elf32_Word d_val;
  Elf32_Addr d_ptr;
 } d_un;
} Elf32_Dyn;
typedef struct {
 Elf64_Xword d_tag;
 union {
  Elf64_Addr d_ptr;
  Elf64_Xword d_val;
 } d_un;
} Elf64_Dyn;
typedef struct {
 Elf32_Word n_namesz;
 Elf32_Word n_descsz;
 Elf32_Word n_type;
} Elf32_Nhdr;
typedef struct {
 Elf64_Half n_namesz;
 Elf64_Half n_descsz;
 Elf64_Half n_type;
} Elf64_Nhdr;
typedef struct {
 Elf32_Word namesz;
 Elf32_Word descsz;
 Elf32_Word type;
} Elf32_Note;
typedef struct {
 Elf64_Half namesz;
 Elf64_Half descsz;
 Elf64_Half type;
} Elf64_Note;
struct elfcore_procinfo {
 uint32_t cpi_version;
 uint32_t cpi_cpisize;
 uint32_t cpi_signo;
 uint32_t cpi_sigcode;
 uint32_t cpi_sigpend;
 uint32_t cpi_sigmask;
 uint32_t cpi_sigignore;
 uint32_t cpi_sigcatch;
 int32_t cpi_pid;
 int32_t cpi_ppid;
 int32_t cpi_pgrp;
 int32_t cpi_sid;
 uint32_t cpi_ruid;
 uint32_t cpi_euid;
 uint32_t cpi_svuid;
 uint32_t cpi_rgid;
 uint32_t cpi_egid;
 uint32_t cpi_svgid;
 int8_t cpi_name[32];
};
typedef struct {
 Elf32_Sword au_id;
 Elf32_Word au_v;
} Aux32Info;
typedef struct {
 Elf64_Shalf au_id;
 Elf64_Xword au_v;
} Aux64Info;
enum AuxID {
 AUX_null = 0,
 AUX_ignore = 1,
 AUX_execfd = 2,
 AUX_phdr = 3,
 AUX_phent = 4,
 AUX_phnum = 5,
 AUX_pagesz = 6,
 AUX_base = 7,
 AUX_flags = 8,
 AUX_entry = 9,
 AUX_sun_uid = 2000,
 AUX_sun_ruid = 2001,
 AUX_sun_gid = 2002,
 AUX_sun_rgid = 2003
};
struct elf_args {
        u_long arg_entry;
        u_long arg_interp;
        u_long arg_phaddr;
        u_long arg_phentsize;
        u_long arg_phnum;
};
struct exec_package;
int exec_elf_makecmds(struct proc *, struct exec_package *);
typedef int db_strategy_t;
typedef void (db_forall_func_t)(Elf64_Sym *, char *, char *, int, void *);
extern unsigned int db_maxoff;
int db_eqname(char *, char *, int);
Elf64_Sym * db_symbol_by_name(char *, db_expr_t *);
Elf64_Sym * db_search_symbol(db_addr_t, db_strategy_t, db_expr_t *);
void db_symbol_values(Elf64_Sym *, char **, db_expr_t *);
void db_printsym(db_expr_t, db_strategy_t, int (*)(const char *, ...));
int db_elf_sym_init(int, void *, void *, const char *);
Elf64_Sym * db_elf_sym_search(db_addr_t, db_strategy_t, db_expr_t *);
int db_elf_line_at_pc(Elf64_Sym *, char **, int *, db_expr_t);
void db_elf_sym_forall(db_forall_func_t db_forall_func, void *);
_Bool db_dwarf_line_at_pc(const char *, size_t, uintptr_t,
    const char **, const char **, int *);
int db_ctf_func_numargs(Elf64_Sym *);
struct db_variable {
 char *name;
 long *valuep;
 int (*fcn)(struct db_variable *, db_expr_t *, int);
};
extern struct db_variable db_vars[];
extern struct db_variable *db_evars;
extern struct db_variable db_regs[];
extern struct db_variable *db_eregs;
int db_find_variable(struct db_variable **);
int db_get_variable(db_expr_t *);
int db_set_variable(db_expr_t);
void db_read_variable(struct db_variable *, db_expr_t *);
void db_write_variable(struct db_variable *, db_expr_t *);
void db_set_cmd(db_expr_t, int, db_expr_t, char *);
int db_var_rw_int(struct db_variable *, db_expr_t *, int);
void ddb_init(void);
void db_examine_cmd(db_expr_t, int, db_expr_t, char *);
void db_print_cmd(db_expr_t, int, db_expr_t, char *);
void db_search_cmd(db_expr_t, boolean_t, db_expr_t, char *);
void db_print_loc_and_inst(db_addr_t);
size_t db_strlcpy(char *, const char *, size_t);
int db_expression(db_expr_t *);
void db_hangman(db_expr_t, int, db_expr_t, char *);
int db_readline(char *, int);
void db_trap(int, int);
void db_prof_init(void);
int db_prof_enable(void);
void db_prof_disable(void);
void db_ctf_init(void);
db_expr_t db_get_value(db_addr_t, size_t, int);
void db_put_value(db_addr_t, size_t, db_expr_t);
void db_read_bytes(db_addr_t, size_t, char *);
void db_write_bytes(db_addr_t, size_t, char *);
struct db_stack_trace {
 unsigned int st_count;
 db_addr_t st_pc[19];
};
void db_print_stack_trace(struct db_stack_trace *);
void db_save_stack_trace(struct db_stack_trace *);
void db_force_whitespace(void);
void db_putchar(int);
int db_print_position(void);
int db_printf(const char *, ...)
    __attribute__((__format__(__kprintf__,1,2)));
int db_vprintf(const char *, va_list)
    __attribute__((__format__(__kprintf__,1,0)));
void db_end_line(int);
char *db_format(char *, size_t, long, int, int, int);
void db_stack_dump(void);
paddr_t cpu0paddr;
extern int64_t asmptechk(int64_t *pseg[], int addr);
extern int64_t pseg_get(struct pmap*, vaddr_t addr);
extern int pseg_set(struct pmap*, vaddr_t addr, int64_t tte, paddr_t spare);
void pmap_zero_phys(paddr_t pa);
void pmap_copy_phys(paddr_t src, paddr_t dst);
pv_entry_t pv_table;
static struct pool pv_pool;
static struct pool pmap_pool;
pv_entry_t pmap_remove_pv(struct pmap *pm, vaddr_t va, paddr_t pa);
pv_entry_t pmap_enter_pv(struct pmap *pm, pv_entry_t, vaddr_t va, paddr_t pa);
void pmap_page_cache(struct pmap *pm, paddr_t pa, int mode);
void pmap_bootstrap_cpu(paddr_t);
void pmap_pinit(struct pmap *);
void pmap_release(struct pmap *);
pv_entry_t pa_to_pvh(paddr_t);
u_int64_t first_phys_addr;
pv_entry_t
pa_to_pvh(paddr_t pa)
{
 struct vm_page *pg;
 pg = PHYS_TO_VM_PAGE(pa);
 return pg ? &pg->mdpage.pvent : ((void *)0);
}
static __inline u_int
pmap_tte2flags(u_int64_t tte)
{
 if ((cputyp == 5))
  return (((tte & 0x0000000000000010LL) ? 0x2LL : 0) |
      ((tte & 0x0000000000000020LL) ? 0x4LL : 0));
 else
  return (((tte & 0x0000000000000200LL) ? 0x2LL : 0) |
      ((tte & 0x0000000000000800LL) ? 0x4LL : 0));
}
pte_t *tsb_dmmu;
pte_t *tsb_immu;
int tsbsize;
struct tsb_desc *tsb_desc;
struct pmap kernel_pmap_;
extern int physmem;
vaddr_t ktext;
paddr_t ktextp;
vaddr_t ektext;
paddr_t ektextp;
vaddr_t kdata;
paddr_t kdatap;
vaddr_t ekdata;
paddr_t ekdatap;
static int npgs;
static struct mem_region memlist[8];
vaddr_t vmmap;
struct mem_region *mem, *avail, *orig;
int memsize;
static int memh = 0, vmemh = 0;
static int ptelookup_va(vaddr_t va);
static __inline void
tsb_invalidate(int ctx, vaddr_t va)
{
 int i;
 int64_t tag;
 i = ptelookup_va(va);
 tag = ((((u_int64_t)((0)!=0))<<63)|(((u_int64_t)(ctx)&((1<<13)-1))<<48)|(((u_int64_t)va)>>22));
 if (tsb_dmmu[i].tag == tag)
  _atomic_cas_ulong(((volatile unsigned long *)&tsb_dmmu[i].tag), (tag), ((~0LL << 48)));
 if (tsb_immu[i].tag == tag)
  _atomic_cas_ulong(((volatile unsigned long *)&tsb_immu[i].tag), (tag), ((~0LL << 48)));
}
struct prom_map *prom_map;
int prom_map_size;
paddr_t *ctxbusy;
int numctx;
int pmap_get_page(paddr_t *, const char *, struct pmap *);
void pmap_free_page(paddr_t, struct pmap *);
struct page_size_map page_size_map[] = {
 { (4*1024*1024-1) & ~(8*1024-1), 3 },
 { (512*1024-1) & ~(8*1024-1), 2 },
 { (64*1024-1) & ~(8*1024-1), 1 },
 { (8*1024-1) & ~(8*1024-1), 0 },
 { 0, 0&0 }
};
static void
pmap_enter_kpage(vaddr_t va, int64_t data)
{
 paddr_t newp;
 newp = 0;
 while (pseg_set((&kernel_pmap_), va, data, newp) == 1) {
  newp = 0;
  if (!pmap_get_page(&newp, ((void *)0), (&kernel_pmap_))) {
   prom_printf("pmap_enter_kpage: out of pages\n");
   panic("pmap_enter_kpage");
  }
  ;
 }
}
void
pmap_bootstrap(u_long kernelstart, u_long kernelend, u_int maxctx, u_int numcpus)
{
 extern int data_start[], end[];
 extern int msgbufmapped;
 struct mem_region *mp, *mp1;
 int msgbufsiz;
 int pcnt;
 size_t s, sz;
 int i, j;
 int64_t data;
 vaddr_t va;
 u_int64_t phys_msgbuf;
 paddr_t newkp;
 vaddr_t newkv, firstaddr, intstk;
 vsize_t kdsize, ktsize;
 ;
 uvmexp.pagesize = (1 << 13);
 uvm_setpagesize();
 if ((vmemh = OF_finddevice("/virtual-memory")) == -1) {
  prom_printf("no virtual-memory?");
  OF_exit();
 }
 __builtin_bzero(((caddr_t)memlist), (sizeof(memlist)));
 if (OF_getprop(vmemh, "available", memlist, sizeof(memlist)) <= 0) {
  prom_printf("no vmemory avail?");
  OF_exit();
 }
 msgbufp = (struct msgbuf *)(vaddr_t)( ( ( 0x0e0000000 + 8192) + 8192) + 8192);
 msgbufsiz = 4*(1 << 13) ;
 ;
 if ((long)msgbufp !=
     (long)(phys_msgbuf = prom_claim_virt((vaddr_t)msgbufp, msgbufsiz)))
  prom_printf(
      "cannot get msgbuf VA, msgbufp=%p, phys_msgbuf=%lx\r\n",
      (void *)msgbufp, (long)phys_msgbuf);
 phys_msgbuf = prom_get_msgbuf(msgbufsiz, 8192);
 ;
 if (prom_map_phys(phys_msgbuf, msgbufsiz, (vaddr_t)msgbufp,
     -1 ) == -1)
  prom_printf("Failed to map msgbuf\r\n");
 else
  ;
 msgbufmapped = 1;
 initmsgbuf((caddr_t)msgbufp, msgbufsiz);
 ;
 ktext = kernelstart;
 ktextp = prom_vtop(kernelstart);
 kdata = (vaddr_t)data_start;
 kdatap = prom_vtop(kdata);
 ekdata = (vaddr_t)end;
 for (mp1 = mp = memlist; mp->size; mp++) {
  if (mp->start >= ekdata && (mp1->start < ekdata ||
      mp1->start > mp->start))
   mp1 = mp;
 }
 if (mp1->start < kdata)
  prom_printf("Kernel at end of vmem???\r\n");
 ;
 firstaddr = (ekdata + 07) & ~ 07;
 ekdata += 100*(1<<10);
 if (ekdata < mp1->start)
  ekdata = mp1->start;
 kdsize = (((ekdata - kdata) + ((1 << 13) - 1)) & ~((1 << 13) - 1));
 ;
 if ((kdatap & (4*(1<<20)-1)) == 0) {
  psize_t szdiff = (4*(1<<20) - kdsize) & (4*(1<<20) - 1);
  ;
  if (szdiff) {
   newkp = kdatap + kdsize;
   newkv = kdata + kdsize;
   if (newkp != prom_claim_phys(newkp, szdiff)) {
    prom_printf("pmap_bootstrap: could not claim "
     "physical dseg extension "
     "at %lx size %lx\r\n",
     newkp, szdiff);
    goto remap_data;
   }
   if (prom_claim_virt(newkv, szdiff) != newkv)
   prom_printf("pmap_bootstrap: could not claim "
    "virtual dseg extension "
    "at size %lx\r\n", newkv, szdiff);
   prom_map_phys(newkp, szdiff, newkv, -1);
  }
 } else {
  psize_t sz;
remap_data:
  sz = (kdsize + 4*(1<<20) - 1) & ~(4*(1<<20)-1);
  ;
  if ((newkp = prom_alloc_phys(sz, 4*(1<<20))) == (paddr_t)-1 ) {
   prom_printf("Cannot allocate new kernel\r\n");
   OF_exit();
  }
  ;
  if ((newkv = (vaddr_t)prom_alloc_virt(sz, 8)) ==
      (vaddr_t)-1) {
   prom_printf("Cannot allocate new kernel va\r\n");
   OF_exit();
  }
  ;
  prom_map_phys(newkp, sz, (vaddr_t)newkv, -1);
  ;
  __builtin_bzero(((void *)newkv), (sz));
  __builtin_bcopy(((void *)kdata), ((void *)newkv), (kdsize));
  ;
  prom_unmap_virt((vaddr_t)newkv, sz);
  ;
  prom_map_phys(newkp, sz, kdata, -1);
  ;
  prom_free_phys(kdatap, kdsize);
  kdatap = newkp;
  ;
 }
 ;
 if ((memh = OF_finddevice("/memory")) == -1) {
  prom_printf("no memory?");
  OF_exit();
 }
 memsize = OF_getproplen(memh, "reg") + 2 * sizeof(struct mem_region);
 (mem) = (struct mem_region *)firstaddr; firstaddr += (memsize);
 __builtin_bzero(((caddr_t)mem), (memsize));
 if (OF_getprop(memh, "reg", mem, memsize) <= 0) {
  prom_printf("no memory installed?");
  OF_exit();
 }
 ;
 for (mp = mem; mp->size; mp++)
  physmem += ((mp->size) >> 13);
 ;
 tsbsize = 0;
 while ((physmem >> tsbsize) > ((64 * (1<<20)) >> 13) && tsbsize < 7)
  tsbsize++;
 sz = OF_getproplen(vmemh, "translations");
 (prom_map) = (struct prom_map *)firstaddr; firstaddr += (sz);
 if (OF_getprop(vmemh, "translations", (void *)prom_map, sz) <= 0) {
  prom_printf("no translations installed?");
  OF_exit();
 }
 prom_map_size = sz / sizeof(struct prom_map);
 ktsize = 0;
 for (i = 0; i < prom_map_size; i++)
  if (prom_map[i].vstart == ktext + ktsize)
   ktsize += prom_map[i].vsize;
 if (ktsize == 0)
  panic("No kernel text segment!");
 ektext = ktext + ktsize;
 if (ktextp & (4*(1<<20)-1)) {
  ;
  if ((newkp = prom_alloc_phys(ktsize, 4*(1<<20))) == 0 ) {
   prom_printf("Cannot allocate new kernel text\r\n");
   OF_exit();
  }
  ;
  if ((newkv = (vaddr_t)prom_alloc_virt(ktsize, 8)) ==
      (vaddr_t)-1) {
   prom_printf("Cannot allocate new kernel text va\r\n");
   OF_exit();
  }
  ;
  prom_map_phys(newkp, ktsize, (vaddr_t)newkv, -1);
  ;
  __builtin_bcopy(((void *)ktext), ((void *)newkv), (ktsize));
  ;
  prom_unmap_virt((vaddr_t)newkv, 4*(1<<20));
  ;
  prom_map_phys(newkp, ktsize, ktext, -1);
  ;
  prom_free_phys(ktextp, ktsize);
  ktextp = newkp;
  ;
  if (OF_getprop(vmemh, "translations", (void *)prom_map, sz) <=
   0) {
   prom_printf("no translations installed?");
   OF_exit();
  }
 }
 ektextp = ktextp + ktsize;
 for(i = 0; i < prom_map_size; i++) {
  if (prom_map[i].vstart >= kdata &&
      prom_map[i].vstart <= firstaddr) {
   prom_map[i].vstart = 0;
   prom_map[i].vsize = 0;
  }
  if (prom_map[i].vstart >= ktext &&
      prom_map[i].vstart <= ektext) {
   prom_map[i].vstart = 0;
   prom_map[i].vsize = 0;
  }
  for(j = i; j < prom_map_size; j++) {
   if (prom_map[j].vstart >= kdata &&
       prom_map[j].vstart <= firstaddr)
    continue;
   if (prom_map[j].vstart >= ktext &&
       prom_map[j].vstart <= ektext)
    continue;
   if (prom_map[j].vstart > prom_map[i].vstart) {
    struct prom_map tmp;
    tmp = prom_map[i];
    prom_map[i] = prom_map[j];
    prom_map[j] = tmp;
   }
  }
 }
 if ((cpu0paddr = prom_alloc_phys(numcpus * 8*(1 << 13), 8*(1 << 13))) == 0 ) {
  prom_printf("Cannot allocate new cpu_info\r\n");
  OF_exit();
 }
 sz = OF_getproplen(memh, "available") + sizeof(struct mem_region);
 (orig) = (struct mem_region *)firstaddr; firstaddr += (sz);
 __builtin_bzero(((caddr_t)orig), (sz));
 if (OF_getprop(memh, "available", orig, sz) <= 0) {
  prom_printf("no available RAM?");
  OF_exit();
 }
 (avail) = (struct mem_region *)firstaddr; firstaddr += (sz);
 __builtin_bzero(((caddr_t)avail), (sz));
 for (pcnt = 0, mp = orig, mp1 = avail; (mp1->size = mp->size);
     mp++, mp1++) {
  mp1->start = mp->start;
  pcnt++;
 }
 numctx = maxctx;
 (ctxbusy) = (paddr_t *)firstaddr; firstaddr += ((numctx * (sizeof(paddr_t))));
 __builtin_bzero(((caddr_t)ctxbusy), ((numctx * (sizeof(paddr_t)))));
 ;
 firstaddr = ((firstaddr + ((512 << tsbsize) * 16) - 1) & ~(((512 << tsbsize) * 16)-1));
 ;
 (tsb_dmmu) = (pte_t *)firstaddr; firstaddr += (((512 << tsbsize) * 16));
 __builtin_bzero((tsb_dmmu), (((512 << tsbsize) * 16)));
 (tsb_immu) = (pte_t *)firstaddr; firstaddr += (((512 << tsbsize) * 16));
 __builtin_bzero((tsb_immu), (((512 << tsbsize) * 16)));
 ;
 ;
 if ((cputyp == 5)) {
  (tsb_desc) = (struct tsb_desc *)firstaddr; firstaddr += (sizeof(struct tsb_desc));
  __builtin_bzero((tsb_desc), (sizeof(struct tsb_desc)));
  tsb_desc->td_idxpgsz = 0;
  tsb_desc->td_assoc = 1;
  tsb_desc->td_size = (512 << tsbsize);
  tsb_desc->td_ctxidx = -1;
  tsb_desc->td_pgsz = 0xf;
  tsb_desc->td_pa = (paddr_t)tsb_dmmu + kdatap - kdata;
 }
 first_phys_addr = mem->start;
 ;
 ;
 kdata = kdata & ~((1 << 13) - 1);
 ekdata = firstaddr;
 ekdata = (ekdata + ((1 << 13) - 1)) & ~((1 << 13) - 1);
 ;
 ekdatap = ekdata - kdata + kdatap;
 if(ekdatap > (kdatap + 4*(1<<20))) {
  prom_printf("Kernel size exceeds 4MB\r\n");
 }
 for (i = 0; i < pcnt; i++) {
  for (j = i; j < pcnt; j++) {
   if (avail[j].start < avail[i].start) {
    struct mem_region tmp;
    tmp = avail[i];
    avail[i] = avail[j];
    avail[j] = tmp;
   }
  }
 }
 if (avail->start == 0) {
  avail->start += (1 << 13);
  avail->size -= (1 << 13);
 }
 npgs = 0;
 for (mp = avail; mp->size; mp++) {
  s = mp->start + mp->size;
  if (mp->start < kdatap && s > ((((ekdatap)+((4*(1<<20))-1))/(4*(1<<20)))*(4*(1<<20)))) {
   avail[pcnt].start = ((((ekdatap)+((4*(1<<20))-1))/(4*(1<<20)))*(4*(1<<20)));
   avail[pcnt++].size = s - kdatap;
   mp->size = kdatap - mp->start;
  }
  if (mp->start >= kdatap &&
   mp->start < ((((ekdatap)+((4*(1<<20))-1))/(4*(1<<20)))*(4*(1<<20)))) {
   s = ekdatap - mp->start;
   if (mp->size > s)
    mp->size -= s;
   else
    mp->size = 0;
   mp->start = ((((ekdatap)+((4*(1<<20))-1))/(4*(1<<20)))*(4*(1<<20)));
  }
  s = mp->start + mp->size;
  if (s > kdatap && s < ((((ekdatap)+((4*(1<<20))-1))/(4*(1<<20)))*(4*(1<<20))))
   mp->size -= s - kdatap;
  s = mp->start % (1 << 13);
  if (mp->size >= s) {
   mp->size -= s;
   mp->start += s;
  }
  mp->size -= mp->size % (1 << 13);
  if (mp->size == 0) {
   __builtin_bcopy((mp + 1), (mp), ((pcnt - (mp - avail)) * sizeof *mp));
   pcnt--;
   mp--;
   continue;
  }
  s = mp->start;
  sz = mp->size;
  npgs += ((sz) >> 13);
  for (mp1 = avail; mp1 < mp; mp1++)
   if (s < mp1->start)
    break;
  if (mp1 < mp) {
   __builtin_bcopy((mp1), (mp1 + 1), ((char *)mp - (char *)mp1));
   mp1->start = s;
   mp1->size = sz;
  }
  uvm_page_physload(
   ((mp->start) >> 13),
   ((mp->start+mp->size) >> 13),
   ((mp->start) >> 13),
   ((mp->start+mp->size) >> 13), 0);
 }
 do { (void)(((void *)0)); (void)(0); __mtx_init((&(&kernel_pmap_)->pm_mtx), ((((7)) > 0 && ((7)) < 12) ? 12 : ((7)))); } while (0);
 (&kernel_pmap_)->pm_refs = 1;
 (&kernel_pmap_)->pm_ctx = 0;
 {
  paddr_t newp;
  do {
   pmap_get_page(&newp, ((void *)0), (&kernel_pmap_));
  } while (!newp);
  (&kernel_pmap_)->pm_segs=(int64_t *)(u_long)newp;
  (&kernel_pmap_)->pm_physaddr = newp;
  ((paddr_t*)ctxbusy)[0] = (&kernel_pmap_)->pm_physaddr;
 }
 ;
 va = (vaddr_t)msgbufp;
 prom_map_phys(phys_msgbuf, msgbufsiz, (vaddr_t)msgbufp, -1);
 while (msgbufsiz) {
  data = ((cputyp == 5) ? (((1)?0x8000000000000000LL:0LL)|(((uint64_t)(0))<<0)|(((u_int64_t)(phys_msgbuf))&0x00ffffffffffe000LL)|((1)?((0)?0x0000000000000400LL:0x0000000000000600LL):0x0000000000000800LL)|((1)?0x0000000000000100LL:0LL)|((1)?0x0000000000000040LL:0LL)|((0)?0x0000000000000000LL:0LL)|((0)?0x0000000000001000LL:0LL)) : (((1)?0x8000000000000000LL:0LL)|(((uint64_t)(0)) << 61)|(((u_int64_t)(phys_msgbuf))&0x00007fffffffe000LL)|((1)?((0)?0x0000000000000020LL:0x0000000000000030LL):0x0000000000000008LL)|((1)?0x0000000000000004LL:0LL)|((1)?0x0000000000000002LL:0LL)|((0)?0x0000000000000001LL:0LL)|((0)?0x0800000000000000LL:0LL)));
  pmap_enter_kpage(va, data);
  va += (1 << 13);
  msgbufsiz -= (1 << 13);
  phys_msgbuf += (1 << 13);
 }
 ;
 ;
 data = ((cputyp == 5) ? 0x0000000000000080LL : 0x0000000000000100LL);
 for (i = 0; i < prom_map_size; i++) {
  if (prom_map[i].vstart && ((prom_map[i].vstart>>32) == 0)) {
   for (j = 0; j < prom_map[i].vsize; j += (1 << 13)) {
    int k;
    for (k = 0; page_size_map[k].mask; k++) {
     if (((prom_map[i].vstart |
           prom_map[i].tte) &
           page_size_map[k].mask) == 0 &&
           page_size_map[k].mask <
           prom_map[i].vsize)
      break;
    }
    pmap_enter_kpage(prom_map[i].vstart + j,
     (prom_map[i].tte + j)|data|
     page_size_map[k].code);
   }
  }
 }
 ;
 vmmap = (vaddr_t)((((ekdata)+((4*(1<<20))-1))/(4*(1<<20)))*(4*(1<<20)));
 vmmap += (1 << 13);
 {
  extern vaddr_t u0[2];
  extern struct pcb* proc0paddr;
  extern void main(void);
  paddr_t pa;
  u0[0] = vmmap;
  u0[1] = vmmap + 2*(2 * (1 << 13));
  ;
  while (vmmap < u0[1]) {
   int64_t data;
   pmap_get_page(&pa, ((void *)0), (&kernel_pmap_));
   prom_map_phys(pa, (1 << 13), vmmap, -1);
   data = ((cputyp == 5) ? (((1)?0x8000000000000000LL:0LL)|(((uint64_t)(0))<<0)|(((u_int64_t)(pa))&0x00ffffffffffe000LL)|((1)?((0)?0x0000000000000400LL:0x0000000000000600LL):0x0000000000000800LL)|((1)?0x0000000000000100LL:0LL)|((1)?0x0000000000000040LL:0LL)|((0)?0x0000000000000000LL:0LL)|((0)?0x0000000000001000LL:0LL)) : (((1)?0x8000000000000000LL:0LL)|(((uint64_t)(0)) << 61)|(((u_int64_t)(pa))&0x00007fffffffe000LL)|((1)?((0)?0x0000000000000020LL:0x0000000000000030LL):0x0000000000000008LL)|((1)?0x0000000000000004LL:0LL)|((1)?0x0000000000000002LL:0LL)|((0)?0x0000000000000001LL:0LL)|((0)?0x0800000000000000LL:0LL)));
   pmap_enter_kpage(vmmap, data);
   vmmap += (1 << 13);
  }
  ;
  vmmap += (1 << 13);
  intstk = vmmap = ((((vmmap)+((64*(1<<10))-1))/(64*(1<<10)))*(64*(1<<10)));
  cpus = (struct cpu_info *)(intstk + ( ( ( 0x0e0000000 + 8*8192) + 2*(2 * (1 << 13)))) - ( 0x0e0000000 + 8*8192));
  ;
  pa = cpu0paddr;
  prom_map_phys(pa, 64*(1<<10), vmmap, -1);
  prom_map_phys(pa, 64*(1<<10), ( ( ( 0x0e0000000 + 8*8192) + 2*(2 * (1 << 13)))), -1);
  for (i=0; i<8; i++) {
   int64_t data;
   data = ((cputyp == 5) ? (((1)?0x8000000000000000LL:0LL)|(((uint64_t)(0))<<0)|(((u_int64_t)(pa))&0x00ffffffffffe000LL)|((1)?((0)?0x0000000000000400LL:0x0000000000000600LL):0x0000000000000800LL)|((1)?0x0000000000000100LL:0LL)|((1)?0x0000000000000040LL:0LL)|((0)?0x0000000000000000LL:0LL)|((0)?0x0000000000001000LL:0LL)) : (((1)?0x8000000000000000LL:0LL)|(((uint64_t)(0)) << 61)|(((u_int64_t)(pa))&0x00007fffffffe000LL)|((1)?((0)?0x0000000000000020LL:0x0000000000000030LL):0x0000000000000008LL)|((1)?0x0000000000000004LL:0LL)|((1)?0x0000000000000002LL:0LL)|((0)?0x0000000000000001LL:0LL)|((0)?0x0800000000000000LL:0LL)));
   pmap_enter_kpage(vmmap, data);
   vmmap += (1 << 13);
   pa += (1 << 13);
  }
  ;
  __builtin_bzero(((void *)intstk), (8*(1 << 13)));
  cpus->ci_self = cpus;
  cpus->ci_next = ((void *)0);
  cpus->ci_curproc = &proc0;
  cpus->ci_cpcb = (struct pcb *)u0[0];
  cpus->ci_upaid = cpu_myid();
  cpus->ci_cpuid = 0;
  cpus->ci_flags = 0x0001;
  cpus->ci_fpproc = ((void *)0);
  cpus->ci_spinup = main;
  cpus->ci_initstack = (void *)u0[1];
  cpus->ci_paddr = cpu0paddr;
  cpus->ci_mmfsa = cpu0paddr;
  proc0paddr = cpus->ci_cpcb;
  cpu0paddr += 64 * (1<<10);
  ;
 }
 vmmap = (vaddr_t)reserve_dumppages((caddr_t)(u_long)vmmap);
 ;
 pmap_bootstrap_cpu(cpus->ci_paddr);
}
void sun4u_bootstrap_cpu(paddr_t);
void sun4v_bootstrap_cpu(paddr_t);
void
pmap_bootstrap_cpu(paddr_t intstack)
{
 if ((cputyp == 5))
  sun4v_bootstrap_cpu(intstack);
 else
  sun4u_bootstrap_cpu(intstack);
}
extern void sun4u_set_tsbs(void);
void
sun4u_bootstrap_cpu(paddr_t intstack)
{
 u_int64_t data;
 paddr_t pa;
 vaddr_t va;
 int index;
 int impl;
 impl = (getver() & 0x0000ffff00000000ULL) >> 32;
 index = 15;
 for (va = ktext, pa = ktextp; va < ektext; va += 4*(1<<20), pa += 4*(1<<20)) {
  data = (((1)?0x8000000000000000LL:0LL)|(((uint64_t)(3)) << 61)|(((u_int64_t)(pa))&0x00007fffffffe000LL)|((1)?((0)?0x0000000000000020LL:0x0000000000000030LL):0x0000000000000008LL)|((1)?0x0000000000000004LL:0LL)|((0)?0x0000000000000002LL:0LL)|((0)?0x0000000000000001LL:0LL)|((0)?0x0800000000000000LL:0LL));
  data |= 0x0000000000000040LL;
  prom_itlb_load(index, data, va);
  prom_dtlb_load(index, data, va);
  index--;
 }
 for (va = kdata, pa = kdatap; va < ekdata; va += 4*(1<<20), pa += 4*(1<<20)) {
  data = (((1)?0x8000000000000000LL:0LL)|(((uint64_t)(3)) << 61)|(((u_int64_t)(pa))&0x00007fffffffe000LL)|((1)?((0)?0x0000000000000020LL:0x0000000000000030LL):0x0000000000000008LL)|((1)?0x0000000000000004LL:0LL)|((1)?0x0000000000000002LL:0LL)|((0)?0x0000000000000001LL:0LL)|((0)?0x0800000000000000LL:0LL));
  data |= 0x0000000000000040LL;
  prom_dtlb_load(index, data, va);
  index--;
 }
 if (impl >= 0x06 && impl <= 0x07) {
  pa = intstack + (( ( ( 0x0e0000000 + 8*8192) + 2*(2 * (1 << 13)))) - ( 0x0e0000000 + 8*8192));
  pa += __builtin_offsetof(struct cpu_info, ci_self);
  va = (__builtin_constant_p(0x14) ? ({ u_int64_t __rldxu_int64_t; if(0x14 == 0x80 || (sizeof(u_int64_t) == 1 && 0x14 == 0x88)) __rldxu_int64_t = *((volatile u_int64_t *)(pa)); else __asm volatile("ldxa" " [%1] " "0x14" ", %0" : "=r" (__rldxu_int64_t) : "r" ((volatile u_int64_t *)(pa)) : "%g0"); __rldxu_int64_t; }) : ldxa_nc((pa), 0x14));
  (__builtin_constant_p(0x4f) ? ({ if((0x4f) == 0x80 || (sizeof(u_int64_t) == 1 && (0x4f) == 0x88)) *((volatile u_int64_t *)(0x00)) = (va); else __asm volatile("stxa" " %0, [%1] " "(0x4f)" : : "r" ((va)), "r" ((volatile u_int64_t *)(0x00)) : "memory"); }) : stxa_nc((0x00), 0x4f, (va)));
  if (((((__builtin_constant_p(0x4a) ? ({ u_int64_t __rldxu_int64_t; if(0x4a == 0x80 || (sizeof(u_int64_t) == 1 && 0x4a == 0x88)) __rldxu_int64_t = *((volatile u_int64_t *)(0)); else __asm volatile("ldxa" " [%1] " "0x4a" ", %0" : "=r" (__rldxu_int64_t) : "r" ((volatile u_int64_t *)(0)) : "%g0"); __rldxu_int64_t; }) : ldxa_nc((0), 0x4a))) & 0x3ff) % 2) == 1)
   index--;
  data = (((1)?0x8000000000000000LL:0LL)|(((uint64_t)(1)) << 61)|(((u_int64_t)(intstack))&0x00007fffffffe000LL)|((1)?((0)?0x0000000000000020LL:0x0000000000000030LL):0x0000000000000008LL)|((1)?0x0000000000000004LL:0LL)|((1)?0x0000000000000002LL:0LL)|((0)?0x0000000000000001LL:0LL)|((0)?0x0800000000000000LL:0LL));
  data |= 0x0000000000000040LL;
  prom_dtlb_load(index, data, va - (( ( ( 0x0e0000000 + 8*8192) + 2*(2 * (1 << 13)))) - ( 0x0e0000000 + 8*8192)));
  sun4u_set_tsbs();
  return;
 }
 data = (((1)?0x8000000000000000LL:0LL)|(((uint64_t)(1)) << 61)|(((u_int64_t)(intstack))&0x00007fffffffe000LL)|((1)?((0)?0x0000000000000020LL:0x0000000000000030LL):0x0000000000000008LL)|((1)?0x0000000000000004LL:0LL)|((1)?0x0000000000000002LL:0LL)|((0)?0x0000000000000001LL:0LL)|((0)?0x0800000000000000LL:0LL));
 data |= 0x0000000000000040LL;
 prom_dtlb_load(index, data, ( 0x0e0000000 + 8*8192));
 sun4u_set_tsbs();
}
void
sun4v_bootstrap_cpu(paddr_t intstack)
{
 u_int64_t data;
 paddr_t pa;
 vaddr_t va;
 int err;
 for (va = ktext, pa = ktextp; va < ektext; va += 4*(1<<20), pa += 4*(1<<20)) {
  data = (((1)?0x8000000000000000LL:0LL)|(((uint64_t)(3))<<0)|(((u_int64_t)(pa))&0x00ffffffffffe000LL)|((1)?((0)?0x0000000000000400LL:0x0000000000000600LL):0x0000000000000800LL)|((1)?0x0000000000000100LL:0LL)|((0)?0x0000000000000040LL:0LL)|((0)?0x0000000000000000LL:0LL)|((0)?0x0000000000001000LL:0LL));
  data |= 0x0000000000000080LL;
  err = hv_mmu_map_perm_addr(va, data, 0x2|0x1);
  if (err != 0)
   prom_printf("err: %d\r\n", err);
 }
 for (va = kdata, pa = kdatap; va < ekdata; va += 4*(1<<20), pa += 4*(1<<20)) {
  data = (((1)?0x8000000000000000LL:0LL)|(((uint64_t)(3))<<0)|(((u_int64_t)(pa))&0x00ffffffffffe000LL)|((1)?((0)?0x0000000000000400LL:0x0000000000000600LL):0x0000000000000800LL)|((1)?0x0000000000000100LL:0LL)|((1)?0x0000000000000040LL:0LL)|((0)?0x0000000000000000LL:0LL)|((0)?0x0000000000001000LL:0LL));
  err = hv_mmu_map_perm_addr(va, data, 0x1);
  if (err != 0)
   prom_printf("err: %d\r\n", err);
 }
 pa = intstack + (( ( ( 0x0e0000000 + 8*8192) + 2*(2 * (1 << 13)))) - ( 0x0e0000000 + 8*8192));
 pa += __builtin_offsetof(struct cpu_info, ci_self);
 (__builtin_constant_p(0x20) ? ({ if((0x20) == 0x80 || (sizeof(u_int64_t) == 1 && (0x20) == 0x88)) *((volatile u_int64_t *)(0x00)) = ((__builtin_constant_p(0x14) ? ({ u_int64_t __rldxu_int64_t; if(0x14 == 0x80 || (sizeof(u_int64_t) == 1 && 0x14 == 0x88)) __rldxu_int64_t = *((volatile u_int64_t *)(pa)); else __asm volatile("ldxa" " [%1] " "0x14" ", %0" : "=r" (__rldxu_int64_t) : "r" ((volatile u_int64_t *)(pa)) : "%g0"); __rldxu_int64_t; }) : ldxa_nc((pa), 0x14))); else __asm volatile("stxa" " %0, [%1] " "(0x20)" : : "r" (((__builtin_constant_p(0x14) ? ({ u_int64_t __rldxu_int64_t; if(0x14 == 0x80 || (sizeof(u_int64_t) == 1 && 0x14 == 0x88)) __rldxu_int64_t = *((volatile u_int64_t *)(pa)); else __asm volatile("ldxa" " [%1] " "0x14" ", %0" : "=r" (__rldxu_int64_t) : "r" ((volatile u_int64_t *)(pa)) : "%g0"); __rldxu_int64_t; }) : ldxa_nc((pa), 0x14)))), "r" ((volatile u_int64_t *)(0x00)) : "memory"); }) : stxa_nc((0x00), 0x20, ((__builtin_constant_p(0x14) ? ({ u_int64_t __rldxu_int64_t; if(0x14 == 0x80 || (sizeof(u_int64_t) == 1 && 0x14 == 0x88)) __rldxu_int64_t = *((volatile u_int64_t *)(pa)); else __asm volatile("ldxa" " [%1] " "0x14" ", %0" : "=r" (__rldxu_int64_t) : "r" ((volatile u_int64_t *)(pa)) : "%g0"); __rldxu_int64_t; }) : ldxa_nc((pa), 0x14)))));
 (__builtin_constant_p(0x20) ? ({ if((0x20) == 0x80 || (sizeof(u_int64_t) == 1 && (0x20) == 0x88)) *((volatile u_int64_t *)(0x10)) = (intstack + (( ( ( 0x0e0000000 + 8*8192) + 2*(2 * (1 << 13)))) - ( 0x0e0000000 + 8*8192))); else __asm volatile("stxa" " %0, [%1] " "(0x20)" : : "r" ((intstack + (( ( ( 0x0e0000000 + 8*8192) + 2*(2 * (1 << 13)))) - ( 0x0e0000000 + 8*8192)))), "r" ((volatile u_int64_t *)(0x10)) : "memory"); }) : stxa_nc((0x10), 0x20, (intstack + (( ( ( 0x0e0000000 + 8*8192) + 2*(2 * (1 << 13)))) - ( 0x0e0000000 + 8*8192)))));
 err = hv_mmu_tsb_ctx0(1, (paddr_t)tsb_desc + kdatap - kdata);
 if (err != 0)
  prom_printf("err: %d\r\n", err);
 err = hv_mmu_tsb_ctxnon0(1, (paddr_t)tsb_desc + kdatap - kdata);
 if (err != 0)
  prom_printf("err: %d\r\n", err);
}
void
pmap_init(void)
{
 ;
 if ((1 << 13) != (1 << 13))
  panic("pmap_init: CLSIZE!=1");
 pool_init(&pv_pool, sizeof(struct pv_entry), 0, 7, 0,
     "pv_entry", ((void *)0));
 pool_init(&pmap_pool, sizeof(struct pmap), 0, 0, 0,
     "pmappl", ((void *)0));
}
static vaddr_t kbreak;
void
pmap_virtual_space(vaddr_t *start, vaddr_t *end)
{
 if (vmmap < ((vaddr_t)0x0000040000000000L))
  vmmap = ((vaddr_t)0x0000040000000000L);
 *start = kbreak = (vaddr_t)(vmmap + 2*(1 << 13));
 *end = ((vaddr_t)0x000007ffffffffffL);
 ;
}
vaddr_t
pmap_growkernel(vaddr_t maxkvaddr)
{
 paddr_t pg;
 struct pmap *pm = (&kernel_pmap_);
 if (maxkvaddr >= ((vaddr_t)0x000007ffffffffffL)) {
  printf("WARNING: cannot extend kernel pmap beyond %p to %p\n",
         (void *)((vaddr_t)0x000007ffffffffffL), (void *)maxkvaddr);
  return (kbreak);
 }
 for (kbreak &= (-1<<(10+(13))); kbreak < maxkvaddr;
      kbreak += (1<<(10+(13)))) {
  if (pseg_get(pm, kbreak))
   continue;
  pg = 0;
  while (pseg_set(pm, kbreak, 0, pg) == 1) {
   pg = 0;
   pmap_get_page(&pg, "growk", pm);
  }
 }
 return (kbreak);
}
struct pmap *
pmap_create(void)
{
 struct pmap *pm;
 pm = pool_get(&pmap_pool, 0x0001 | 0x0008);
 do { (void)(((void *)0)); (void)(0); __mtx_init((&pm->pm_mtx), ((((7)) > 0 && ((7)) < 12) ? 12 : ((7)))); } while (0);
 pm->pm_refs = 1;
 pmap_get_page(&pm->pm_physaddr, "pmap_create", pm);
 pm->pm_segs = (int64_t *)(u_long)pm->pm_physaddr;
 ctx_alloc(pm);
 return (pm);
}
void
pmap_reference(struct pmap *pm)
{
 ((void)_atomic_add_int_nv((&pm->pm_refs), 1));
}
void
pmap_destroy(struct pmap *pm)
{
 if (_atomic_sub_int_nv((&pm->pm_refs), 1) == 0) {
  pmap_release(pm);
  pool_put(&pmap_pool, pm);
 }
}
void
pmap_release(struct pmap *pm)
{
 int i, j, k;
 paddr_t *pdir, *ptbl, tmp;
 if(pm == (&kernel_pmap_))
  panic("pmap_release: releasing pmap_kernel()");
 __mtx_enter(&pm->pm_mtx );
 for(i=0; i<(((1 << 13)/8)); i++) {
  paddr_t psegentp = (paddr_t)(u_long)&pm->pm_segs[i];
  if((pdir = (paddr_t *)(u_long)(__builtin_constant_p(0x14) ? ({ u_int64_t __rldxu_int64_t; if(0x14 == 0x80 || (sizeof(u_int64_t) == 1 && 0x14 == 0x88)) __rldxu_int64_t = *((volatile u_int64_t *)((vaddr_t)psegentp)); else __asm volatile("ldxa" " [%1] " "0x14" ", %0" : "=r" (__rldxu_int64_t) : "r" ((volatile u_int64_t *)((vaddr_t)psegentp)) : "%g0"); __rldxu_int64_t; }) : ldxa_nc(((vaddr_t)psegentp), 0x14)))) {
   for (k=0; k<(((1 << 13)/8)); k++) {
    paddr_t pdirentp = (paddr_t)(u_long)&pdir[k];
    if ((ptbl = (paddr_t *)(u_long)(__builtin_constant_p(0x14) ? ({ u_int64_t __rldxu_int64_t; if(0x14 == 0x80 || (sizeof(u_int64_t) == 1 && 0x14 == 0x88)) __rldxu_int64_t = *((volatile u_int64_t *)((vaddr_t)pdirentp)); else __asm volatile("ldxa" " [%1] " "0x14" ", %0" : "=r" (__rldxu_int64_t) : "r" ((volatile u_int64_t *)((vaddr_t)pdirentp)) : "%g0"); __rldxu_int64_t; }) : ldxa_nc(((vaddr_t)pdirentp), 0x14)))) {
     for (j=0; j<((1 << 13)/8); j++) {
      int64_t data;
      paddr_t pa;
      pv_entry_t pv;
      data = (__builtin_constant_p(0x14) ? ({ u_int64_t __rldxu_int64_t; if(0x14 == 0x80 || (sizeof(u_int64_t) == 1 && 0x14 == 0x88)) __rldxu_int64_t = *((volatile u_int64_t *)((vaddr_t)&ptbl[j])); else __asm volatile("ldxa" " [%1] " "0x14" ", %0" : "=r" (__rldxu_int64_t) : "r" ((volatile u_int64_t *)((vaddr_t)&ptbl[j])) : "%g0"); __rldxu_int64_t; }) : ldxa_nc(((vaddr_t)&ptbl[j]), 0x14));
      if (!(data & 0x8000000000000000LL))
       continue;
      pa = data & 0x00007fffffffe000LL;
      pv = pa_to_pvh(pa);
      if (pv != ((void *)0)) {
       printf("pmap_release: pm=%p page %llx still in use\n", pm,
              (unsigned long long)(((u_int64_t)i<<(10+(10+(13))))|((u_int64_t)k<<(10+(13)))|((u_int64_t)j<<(13))));
       __asm volatile("ta 1; nop");;
      }
     }
     (__builtin_constant_p(0x14) ? ({ if((0x14) == 0x80 || (sizeof(u_int64_t) == 1 && (0x14) == 0x88)) *((volatile u_int64_t *)(pdirentp)) = (0); else __asm volatile("stxa" " %0, [%1] " "(0x14)" : : "r" ((0)), "r" ((volatile u_int64_t *)(pdirentp)) : "memory"); }) : stxa_nc((pdirentp), 0x14, (0)));
     pmap_free_page((paddr_t)ptbl, pm);
    }
   }
   (__builtin_constant_p(0x14) ? ({ if((0x14) == 0x80 || (sizeof(u_int64_t) == 1 && (0x14) == 0x88)) *((volatile u_int64_t *)(psegentp)) = (0); else __asm volatile("stxa" " %0, [%1] " "(0x14)" : : "r" ((0)), "r" ((volatile u_int64_t *)(psegentp)) : "memory"); }) : stxa_nc((psegentp), 0x14, (0)));
   pmap_free_page((paddr_t)pdir, pm);
  }
 }
 tmp = (paddr_t)(u_long)pm->pm_segs;
 pm->pm_segs = ((void *)0);
 pmap_free_page(tmp, pm);
 __mtx_leave(&pm->pm_mtx );
 ctx_free(pm);
}
void
pmap_copy(struct pmap *dst_pmap, struct pmap *src_pmap, vaddr_t dst_addr,
    vsize_t len, vaddr_t src_addr)
{
}
void
pmap_collect(struct pmap *pm)
{
 int i, j, k, n, m, s;
 paddr_t *pdir, *ptbl;
 if (pm == (&kernel_pmap_))
  return;
 s = _splraise(7);
 for (i=0; i<(((1 << 13)/8)); i++) {
  if ((pdir = (paddr_t *)(u_long)(__builtin_constant_p(0x14) ? ({ u_int64_t __rldxu_int64_t; if(0x14 == 0x80 || (sizeof(u_int64_t) == 1 && 0x14 == 0x88)) __rldxu_int64_t = *((volatile u_int64_t *)((vaddr_t)&pm->pm_segs[i])); else __asm volatile("ldxa" " [%1] " "0x14" ", %0" : "=r" (__rldxu_int64_t) : "r" ((volatile u_int64_t *)((vaddr_t)&pm->pm_segs[i])) : "%g0"); __rldxu_int64_t; }) : ldxa_nc(((vaddr_t)&pm->pm_segs[i]), 0x14)))) {
   m = 0;
   for (k=0; k<(((1 << 13)/8)); k++) {
    if ((ptbl = (paddr_t *)(u_long)(__builtin_constant_p(0x14) ? ({ u_int64_t __rldxu_int64_t; if(0x14 == 0x80 || (sizeof(u_int64_t) == 1 && 0x14 == 0x88)) __rldxu_int64_t = *((volatile u_int64_t *)((vaddr_t)&pdir[k])); else __asm volatile("ldxa" " [%1] " "0x14" ", %0" : "=r" (__rldxu_int64_t) : "r" ((volatile u_int64_t *)((vaddr_t)&pdir[k])) : "%g0"); __rldxu_int64_t; }) : ldxa_nc(((vaddr_t)&pdir[k]), 0x14)))) {
     m++;
     n = 0;
     for (j=0; j<((1 << 13)/8); j++) {
      int64_t data = (__builtin_constant_p(0x14) ? ({ u_int64_t __rldxu_int64_t; if(0x14 == 0x80 || (sizeof(u_int64_t) == 1 && 0x14 == 0x88)) __rldxu_int64_t = *((volatile u_int64_t *)((vaddr_t)&ptbl[j])); else __asm volatile("ldxa" " [%1] " "0x14" ", %0" : "=r" (__rldxu_int64_t) : "r" ((volatile u_int64_t *)((vaddr_t)&ptbl[j])) : "%g0"); __rldxu_int64_t; }) : ldxa_nc(((vaddr_t)&ptbl[j]), 0x14));
      if (data&0x8000000000000000LL)
       n++;
     }
     if (!n) {
      (__builtin_constant_p(0x14) ? ({ if((0x14) == 0x80 || (sizeof(u_int64_t) == 1 && (0x14) == 0x88)) *((volatile u_int64_t *)((paddr_t)(u_long)&pdir[k])) = (0); else __asm volatile("stxa" " %0, [%1] " "(0x14)" : : "r" ((0)), "r" ((volatile u_int64_t *)((paddr_t)(u_long)&pdir[k])) : "memory"); }) : stxa_nc(((paddr_t)(u_long)&pdir[k]), 0x14, (0)));
      pmap_free_page((paddr_t)ptbl, pm);
     }
    }
   }
   if (!m) {
    (__builtin_constant_p(0x14) ? ({ if((0x14) == 0x80 || (sizeof(u_int64_t) == 1 && (0x14) == 0x88)) *((volatile u_int64_t *)((paddr_t)(u_long)&pm->pm_segs[i])) = (0); else __asm volatile("stxa" " %0, [%1] " "(0x14)" : : "r" ((0)), "r" ((volatile u_int64_t *)((paddr_t)(u_long)&pm->pm_segs[i])) : "memory"); }) : stxa_nc(((paddr_t)(u_long)&pm->pm_segs[i]), 0x14, (0)));
    pmap_free_page((paddr_t)pdir, pm);
   }
  }
 }
 _splx(s);
}
void
pmap_zero_page(struct vm_page *pg)
{
 pmap_zero_phys(((pg)->phys_addr));
}
void
pmap_copy_page(struct vm_page *srcpg, struct vm_page *dstpg)
{
 paddr_t src = ((srcpg)->phys_addr);
 paddr_t dst = ((dstpg)->phys_addr);
 pmap_copy_phys(src, dst);
}
void
pmap_activate(struct proc *p)
{
 struct pmap *pmap = p->p_vmspace->vm_map.pmap;
 int s;
 s = _splraise(7);
 if (p == (__curcpu->ci_self)->ci_curproc) {
  write_user_windows();
  if (pmap->pm_ctx == 0)
   ctx_alloc(pmap);
  if ((cputyp == 5))
   (__builtin_constant_p(0x21) ? ({ if((0x21) == 0x80 || (sizeof(u_int64_t) == 1 && (0x21) == 0x88)) *((volatile u_int64_t *)(0x10)) = (pmap->pm_ctx); else __asm volatile("stxa" " %0, [%1] " "(0x21)" : : "r" ((pmap->pm_ctx)), "r" ((volatile u_int64_t *)(0x10)) : "memory"); }) : stxa_nc((0x10), 0x21, (pmap->pm_ctx)));
  else
   (__builtin_constant_p(0x58) ? ({ if((0x58) == 0x80 || (sizeof(u_int64_t) == 1 && (0x58) == 0x88)) *((volatile u_int64_t *)(0x10)) = (pmap->pm_ctx); else __asm volatile("stxa" " %0, [%1] " "(0x58)" : : "r" ((pmap->pm_ctx)), "r" ((volatile u_int64_t *)(0x10)) : "memory"); }) : stxa_nc((0x10), 0x58, (pmap->pm_ctx)));
 }
 _splx(s);
}
void
pmap_deactivate(struct proc *p)
{
}
void
pmap_kenter_pa(vaddr_t va, paddr_t pa, vm_prot_t prot)
{
 struct pmap *pm = (&kernel_pmap_);
 pte_t tte;
 ((void)0);
 ((void)0);
 if (pa & (0x002|0x001|0x004))
  panic("%s: illegal cache flags 0x%lx", __func__, pa);
 tte.tag = ((((u_int64_t)((0)!=0))<<63)|(((u_int64_t)(pm->pm_ctx)&((1<<13)-1))<<48)|(((u_int64_t)va)>>22));
 if ((cputyp == 5)) {
  tte.data = (((1)?0x8000000000000000LL:0LL)|(((uint64_t)(0))<<0)|(((u_int64_t)(pa))&0x00ffffffffffe000LL)|((1)?((0)?0x0000000000000400LL:0x0000000000000600LL):0x0000000000000800LL)|((1)?0x0000000000000100LL:0LL)|(((0x02 & prot))?0x0000000000000040LL:0LL)|((0)?0x0000000000000000LL:0LL)|((0)?0x0000000000001000LL:0LL));
  if (prot & 0x02)
   tte.data |= 0x2000000000000000LL|0x0000000000000040LL;
  if (prot & 0x04)
   tte.data |= 0x0000000000000080LL;
  tte.data |= 0x1000000000000000LL;
 } else {
  tte.data = (((1)?0x8000000000000000LL:0LL)|(((uint64_t)(0)) << 61)|(((u_int64_t)(pa))&0x00007fffffffe000LL)|((1)?((0)?0x0000000000000020LL:0x0000000000000030LL):0x0000000000000008LL)|((1)?0x0000000000000004LL:0LL)|(((0x02 & prot))?0x0000000000000002LL:0LL)|((0)?0x0000000000000001LL:0LL)|((0)?0x0800000000000000LL:0LL));
  if (prot & 0x02)
   tte.data |= 0x0000000000000400LL|0x0000000000000002LL;
  if (prot & 0x04)
   tte.data |= 0x0000000000000100LL;
  tte.data |= 0x0000000000001000LL;
 }
 ((void)0);
 if (pseg_set(pm, va, tte.data, 0) != 0)
  panic("%s: no pseg", __func__);
 cacheinfo.c_dcache_flush_page(pa);
}
void
pmap_kremove(vaddr_t va, vsize_t size)
{
 struct pmap *pm = (&kernel_pmap_);
 ((void)0);
 ((void)0);
 while (size >= (1 << 13)) {
  if (pm == (&kernel_pmap_) &&
      (va >= ktext && va < ((((ekdata)+((4*(1<<20))-1))/(4*(1<<20)))*(4*(1<<20)))))
   panic("%s: va=0x%lx in locked TLB", __func__, va);
  if (pseg_get(pm, va)) {
   if (pseg_set(pm, va, 0, 0)) {
    printf("pmap_kremove: gotten pseg empty!\n");
    __asm volatile("ta 1; nop");;
   }
   tsb_invalidate(pm->pm_ctx, va);
   smp_tlb_flush_pte(va, pm->pm_ctx);
  }
  va += (1 << 13);
  size -= (1 << 13);
 }
}
int
pmap_enter(struct pmap *pm, vaddr_t va, paddr_t pa, vm_prot_t prot, int flags)
{
 pte_t tte;
 paddr_t pg;
 int aliased = 0;
 pv_entry_t pv, npv;
 int size = 0;
 boolean_t wired = (flags & 0x00000010) != 0;
 ((void)0);
 ((void)0);
 npv = pool_get(&pv_pool, 0x0002);
 if (npv == ((void *)0) && (flags & 0x00000020))
  return (12);
 __mtx_enter(&pm->pm_mtx );
 tte.data = pseg_get(pm, va);
 if (tte.data & 0x8000000000000000LL) {
  __mtx_leave(&pm->pm_mtx );
  pmap_remove(pm, va, va + (1 << 13)-1);
  __mtx_enter(&pm->pm_mtx );
  tte.data = pseg_get(pm, va);
 }
 pv = pa_to_pvh(pa);
 if (pv != ((void *)0)) {
  struct vm_page *pg = PHYS_TO_VM_PAGE(pa);
  __mtx_enter(&pg->mdpage.pvmtx );
  aliased = (pv->pv_va & (0x1LL|0x8LL));
  if ((flags & (0x01 | 0x02 | 0x04)) & ~prot)
   panic("pmap_enter: access_type exceeds prot");
  if (flags & (0x01 | 0x02 | 0x04))
   pv->pv_va |= 0x2LL;
  if (flags & 0x02)
   pv->pv_va |= 0x4LL;
  pv->pv_va |= pmap_tte2flags(tte.data);
  __mtx_leave(&pg->mdpage.pvmtx );
 } else {
  aliased = 0;
 }
 if (pa & 0x002)
  aliased = 1;
 if ((cputyp == 5)) {
  tte.data = (((1)?0x8000000000000000LL:0LL)|(((uint64_t)(size))<<0)|(((u_int64_t)(pa))&0x00ffffffffffe000LL)|(((!(pa & 0x001)))?((aliased)?0x0000000000000400LL:0x0000000000000600LL):0x0000000000000800LL)|((pm == (&kernel_pmap_))?0x0000000000000100LL:0LL)|(((flags & 0x02))?0x0000000000000040LL:0LL)|((0)?0x0000000000000000LL:0LL)|(((pa & 0x004))?0x0000000000001000LL:0LL));
  if (prot & 0x02)
   tte.data |= 0x2000000000000000LL;
  if (prot & 0x04)
   tte.data |= 0x0000000000000080LL;
  if (wired)
   tte.data |= 0x1000000000000000LL;
 } else {
  tte.data = (((1)?0x8000000000000000LL:0LL)|(((uint64_t)(size)) << 61)|(((u_int64_t)(pa))&0x00007fffffffe000LL)|(((!(pa & 0x001)))?((aliased)?0x0000000000000020LL:0x0000000000000030LL):0x0000000000000008LL)|((pm == (&kernel_pmap_))?0x0000000000000004LL:0LL)|(((flags & 0x02))?0x0000000000000002LL:0LL)|((0)?0x0000000000000001LL:0LL)|(((pa & 0x004))?0x0800000000000000LL:0LL));
  if (prot & 0x02)
   tte.data |= 0x0000000000000400LL;
  if (prot & 0x04)
   tte.data |= 0x0000000000000100LL;
  if (wired)
   tte.data |= 0x0000000000001000LL;
 }
 ((void)0);
 pg = 0;
 while (pseg_set(pm, va, tte.data, pg) == 1) {
  pg = 0;
  if (!pmap_get_page(&pg, ((void *)0), pm)) {
   if ((flags & 0x00000020) == 0)
    panic("pmap_enter: no memory");
   __mtx_leave(&pm->pm_mtx );
   if (npv != ((void *)0))
    pool_put(&pv_pool, npv);
   return (12);
  }
 }
 if (pv != ((void *)0))
  npv = pmap_enter_pv(pm, npv, va, pa);
 ((void)_atomic_add_long_nv((&pm->pm_stats.resident_count), 1));
 __mtx_leave(&pm->pm_mtx );
 if (pm->pm_ctx || pm == (&kernel_pmap_)) {
  tsb_invalidate(pm->pm_ctx, va);
  smp_tlb_flush_pte(va, pm->pm_ctx);
 }
 cacheinfo.c_dcache_flush_page(pa);
 if (npv != ((void *)0))
  pool_put(&pv_pool, npv);
 return 0;
}
void
pmap_remove(struct pmap *pm, vaddr_t va, vaddr_t endva)
{
 pv_entry_t pv, freepvs = ((void *)0);
 int flush = 0;
 int64_t data;
 vaddr_t flushva = va;
 ((void)0);
 ((void)0);
 __mtx_enter(&pm->pm_mtx );
 while (va < endva) {
  if (pm == (&kernel_pmap_) && va >= ktext &&
   va < ((((ekdata)+((4*(1<<20))-1))/(4*(1<<20)))*(4*(1<<20))))
   panic("pmap_remove: va=%08x in locked TLB", (u_int)va);
  if ((data = pseg_get(pm, va)) && (data & 0x8000000000000000LL) != 0) {
   paddr_t entry;
   flush |= 1;
   entry = (data & 0x00007fffffffe000LL);
   pv = pa_to_pvh(entry);
   if (pv != ((void *)0)) {
    pv = pmap_remove_pv(pm, va, entry);
    if (pv != ((void *)0)) {
     pv->pv_next = freepvs;
     freepvs = pv;
    }
   }
   if (pseg_set(pm, va, 0, 0)) {
    printf("pmap_remove: gotten pseg empty!\n");
    __asm volatile("ta 1; nop");;
   }
   ((void)_atomic_sub_long_nv((&pm->pm_stats.resident_count), 1));
   if (!pm->pm_ctx && pm != (&kernel_pmap_))
    continue;
   tsb_invalidate(pm->pm_ctx, va);
   smp_tlb_flush_pte(va, pm->pm_ctx);
  }
  va += (1 << 13);
 }
 __mtx_leave(&pm->pm_mtx );
 while ((pv = freepvs) != ((void *)0)) {
  freepvs = pv->pv_next;
  pool_put(&pv_pool, pv);
 }
 if (flush)
  cache_flush_virt(flushva, endva - flushva);
}
void
pmap_protect(struct pmap *pm, vaddr_t sva, vaddr_t eva, vm_prot_t prot)
{
 paddr_t pa;
 pv_entry_t pv;
 int64_t data;
 ((void)0);
 ((void)0);
 if ((prot & (0x02 | 0x04)) ==
     (0x02 | 0x04))
  return;
 if (prot == 0x00) {
  pmap_remove(pm, sva, eva);
  return;
 }
 __mtx_enter(&pm->pm_mtx );
 sva = sva & ~((1 << 13) - 1);
 while (sva < eva) {
  if (pm == (&kernel_pmap_) && sva >= ktext &&
   sva < ((((ekdata)+((4*(1<<20))-1))/(4*(1<<20)))*(4*(1<<20)))) {
   prom_printf("pmap_protect: va=%08x in locked TLB\r\n", sva);
   OF_enter();
   __mtx_leave(&pm->pm_mtx );
   return;
  }
  if (((data = pseg_get(pm, sva))&0x8000000000000000LL) ) {
   pa = data & 0x00007fffffffe000LL;
   pv = pa_to_pvh(pa);
   if (pv != ((void *)0)) {
    struct vm_page *pg = PHYS_TO_VM_PAGE(pa);
    __mtx_enter(&pg->mdpage.pvmtx );
    pv->pv_va |= pmap_tte2flags(data);
    __mtx_leave(&pg->mdpage.pvmtx );
   }
   if ((cputyp == 5)) {
    if ((prot & 0x02) == 0)
     data &= ~(0x0000000000000040LL|0x2000000000000000LL);
    if ((prot & 0x04) == 0)
     data &= ~(0x0000000000000080LL);
   } else {
    if ((prot & 0x02) == 0)
     data &= ~(0x0000000000000002LL|0x0000000000000400LL);
    if ((prot & 0x04) == 0)
     data &= ~(0x0000000000000100LL);
   }
   ((void)0);
   if (pseg_set(pm, sva, data, 0)) {
    printf("pmap_protect: gotten pseg empty!\n");
    __asm volatile("ta 1; nop");;
   }
   if (!pm->pm_ctx && pm != (&kernel_pmap_))
    continue;
   tsb_invalidate(pm->pm_ctx, sva);
   smp_tlb_flush_pte(sva, pm->pm_ctx);
  }
  sva += (1 << 13);
 }
 __mtx_leave(&pm->pm_mtx );
}
boolean_t
pmap_extract(struct pmap *pm, vaddr_t va, paddr_t *pap)
{
 paddr_t pa;
 if (pm == (&kernel_pmap_) && va >= kdata &&
  va < ((((ekdata)+((4*(1<<20))-1))/(4*(1<<20)))*(4*(1<<20)))) {
  pa = (paddr_t) (kdatap - kdata + va);
 } else if( pm == (&kernel_pmap_) && va >= ktext && va < ektext ) {
  pa = (paddr_t) (ktextp - ktext + va);
 } else if (pm == (&kernel_pmap_) && va >= ( 0x0e0000000 + 8*8192) && va < ( ( 0x0e0000000 + 8*8192) + 2*(2 * (1 << 13)))) {
  pa = (__curcpu->ci_self)->ci_paddr + va - ( 0x0e0000000 + 8*8192);
 } else {
  int s;
  s = _splraise(7);
  pa = (pseg_get(pm, va) & 0x00007fffffffe000LL) + (va & ((1 << 13) - 1));
  _splx(s);
 }
 if (pa == 0)
  return (0);
 if (pap != ((void *)0))
  *pap = pa;
 return (1);
}
int
pmap_dumpsize(void)
{
 int sz;
 sz = (((unsigned long)(sizeof(kcore_seg_t)) + 0xf) & ~0xf) + (((unsigned long)(sizeof(cpu_kcore_hdr_t)) + 0xf) & ~0xf);
 sz += memsize * sizeof(phys_ram_seg_t);
 return ((sz + (1 << 9) - 1) >> 9);
}
int
pmap_dumpmmu(int (*dump)(dev_t, daddr_t, caddr_t, size_t), daddr_t blkno)
{
 kcore_seg_t *kseg;
 cpu_kcore_hdr_t *kcpu;
 phys_ram_seg_t memseg;
 register int error = 0;
 register int i, memsegoffset;
 int buffer[((1) << 9) / sizeof(int)];
 int *bp, *ep;
 bp = buffer;
 ep = &buffer[sizeof(buffer) / sizeof(buffer[0])];
 kseg = (kcore_seg_t *)bp;
 ( (*kseg).c_midmag = ((__uint32_t)(( ((1) & 0x3f) << 26) | ( ((151) & 0x03ff) << 16) | ( ((0x8fca) & 0xffff) ))) );
 kseg->c_size = ((pmap_dumpsize()) << 9) - (((unsigned long)(sizeof(kcore_seg_t)) + 0xf) & ~0xf);
 kcpu = (cpu_kcore_hdr_t *)((long)bp + (((unsigned long)(sizeof(kcore_seg_t)) + 0xf) & ~0xf));
 kcpu->cputype = 3;
 kcpu->kernbase = (u_int64_t)0x001000000;
 kcpu->cpubase = (u_int64_t)( ( ( 0x0e0000000 + 8*8192) + 2*(2 * (1 << 13))));
 kcpu->ktextbase = (u_int64_t)ktext;
 kcpu->ktextp = (u_int64_t)ktextp;
 kcpu->ktextsz = (u_int64_t)(((((ektextp)+((4*(1<<20))-1))/(4*(1<<20)))*(4*(1<<20))) - ktextp);
 kcpu->kdatabase = (u_int64_t)kdata;
 kcpu->kdatap = (u_int64_t)kdatap;
 kcpu->kdatasz = (u_int64_t)(((((ekdatap)+((4*(1<<20))-1))/(4*(1<<20)))*(4*(1<<20))) - kdatap);
 kcpu->nmemseg = memsize;
 kcpu->memsegoffset = memsegoffset = (((unsigned long)(sizeof(cpu_kcore_hdr_t)) + 0xf) & ~0xf);
 kcpu->nsegmap = (((1 << 13)/8));
 kcpu->segmapoffset = (u_int64_t)(&kernel_pmap_)->pm_physaddr;
 bp = (int *)((long)kcpu + (((unsigned long)(sizeof(cpu_kcore_hdr_t)) + 0xf) & ~0xf));
 for (i = 0; i < memsize; i++) {
  memseg.start = mem[i].start;
  memseg.size = mem[i].size;
  do { int *sp = (int *)(&memseg); int sz = (sizeof(phys_ram_seg_t)); while (sz > 0) { *bp++ = *sp++; if (bp >= ep) { error = (*dump)(dumpdev, blkno, (caddr_t)buffer, ((1) << 9)); if (error != 0) return (error); ++blkno; bp = buffer; } sz -= 4; } } while (0);
 }
 if (bp != buffer)
  error = (*dump)(dumpdev, blkno++, (caddr_t)buffer, ((1) << 9));
 return (error);
}
int pmap_pa_exists(paddr_t pa)
{
 struct mem_region *mp;
 for (mp = mem; mp->size && mp->start <= pa; mp++)
  if (mp->start <= pa && mp->start + mp->size >= pa)
   return 1;
 return 0;
}
int
ptelookup_va(vaddr_t va)
{
 long tsbptr;
 tsbptr = (((va >> 9) & 0xfffffffffffffff0LL) & ~(0xffffffffffffe000LL<<tsbsize) );
 return (tsbptr/sizeof(pte_t));
}
boolean_t
pmap_clear_modify(struct vm_page *pg)
{
 paddr_t pa = ((pg)->phys_addr);
 int changed = 0;
 pv_entry_t pv;
 __mtx_enter(&pg->mdpage.pvmtx );
 pv = pa_to_pvh(pa);
 if (pv->pv_va & 0x4LL)
  changed |= 1;
 pv->pv_va &= ~(0x4LL);
 if (pv->pv_pmap != ((void *)0)) {
  for (; pv; pv = pv->pv_next) {
   int64_t data;
   data = pseg_get(pv->pv_pmap, pv->pv_va & (~((1 << 13) - 1)));
   if ((cputyp == 5)) {
    if (data & (0x0000000000000020LL))
     changed |= 1;
    data &= ~(0x0000000000000020LL|0x0000000000000040LL);
   } else {
    if (data & (0x0000000000000800LL))
     changed |= 1;
    data &= ~(0x0000000000000800LL|0x0000000000000002LL);
   }
   ((void)0);
   if (pseg_set(pv->pv_pmap, pv->pv_va & (~((1 << 13) - 1)), data, 0)) {
    printf("pmap_clear_modify: gotten pseg empty!\n");
    __asm volatile("ta 1; nop");;
   }
   if (pv->pv_pmap->pm_ctx || pv->pv_pmap == (&kernel_pmap_)) {
    tsb_invalidate(pv->pv_pmap->pm_ctx,
        (pv->pv_va & (~((1 << 13) - 1))));
    smp_tlb_flush_pte((pv->pv_va & (~((1 << 13) - 1))), pv->pv_pmap->pm_ctx);
   }
   if (pv->pv_va & 0x4LL)
    changed |= 1;
   pv->pv_va &= ~(0x4LL);
   cacheinfo.c_dcache_flush_page(pa);
  }
 }
 __mtx_leave(&pg->mdpage.pvmtx );
 return (changed);
}
boolean_t
pmap_clear_reference(struct vm_page *pg)
{
 paddr_t pa = ((pg)->phys_addr);
 int changed = 0;
 pv_entry_t pv;
 __mtx_enter(&pg->mdpage.pvmtx );
 pv = pa_to_pvh(pa);
 if (pv->pv_va & 0x2LL)
  changed = 1;
 pv->pv_va &= ~(0x2LL);
 if (pv->pv_pmap != ((void *)0)) {
  for (; pv; pv = pv->pv_next) {
   int64_t data;
   data = pseg_get(pv->pv_pmap, pv->pv_va & (~((1 << 13) - 1)));
   if ((cputyp == 5)) {
    if (data & 0x0000000000000010LL)
     changed = 1;
    data &= ~0x0000000000000010LL;
   } else {
    if (data & 0x0000000000000200LL)
     changed = 1;
    data &= ~0x0000000000000200LL;
   }
   ((void)0);
   if (pseg_set(pv->pv_pmap, pv->pv_va & (~((1 << 13) - 1)), data, 0)) {
    printf("pmap_clear_reference: gotten pseg empty!\n");
    __asm volatile("ta 1; nop");;
   }
   if (pv->pv_pmap->pm_ctx || pv->pv_pmap == (&kernel_pmap_)) {
    tsb_invalidate(pv->pv_pmap->pm_ctx,
        (pv->pv_va & (~((1 << 13) - 1))));
   }
   if (pv->pv_va & 0x2LL)
    changed = 1;
   pv->pv_va &= ~(0x2LL);
  }
 }
 cacheinfo.c_dcache_flush_page(((pg)->phys_addr));
 __mtx_leave(&pg->mdpage.pvmtx );
 return (changed);
}
boolean_t
pmap_is_modified(struct vm_page *pg)
{
 pv_entry_t pv, npv;
 int mod = 0;
 __mtx_enter(&pg->mdpage.pvmtx );
 pv = &pg->mdpage.pvent;
 if (pv->pv_va & 0x4LL)
  mod = 1;
 if (!mod && (pv->pv_pmap != ((void *)0))) {
  for (npv = pv; mod == 0 && npv && npv->pv_pmap; npv = npv->pv_next) {
   int64_t data;
   data = pseg_get(npv->pv_pmap, npv->pv_va & (~((1 << 13) - 1)));
   if (pmap_tte2flags(data) & 0x4LL)
    mod = 1;
   if (npv->pv_va & 0x4LL)
    mod = 1;
   npv->pv_va &= ~0x4LL;
  }
 }
 if (mod)
  pv->pv_va |= 0x4LL;
 __mtx_leave(&pg->mdpage.pvmtx );
 return (mod);
}
boolean_t
pmap_is_referenced(struct vm_page *pg)
{
 pv_entry_t pv, npv;
 int ref = 0;
 __mtx_enter(&pg->mdpage.pvmtx );
 pv = &pg->mdpage.pvent;
 if (pv->pv_va & 0x2LL)
  ref = 1;
 if (!ref && (pv->pv_pmap != ((void *)0))) {
  for (npv = pv; npv; npv = npv->pv_next) {
   int64_t data;
   data = pseg_get(npv->pv_pmap, npv->pv_va & (~((1 << 13) - 1)));
   if (pmap_tte2flags(data) & 0x2LL)
    ref = 1;
   if (npv->pv_va & 0x2LL)
    ref = 1;
   npv->pv_va &= ~0x2LL;
  }
 }
 if (ref)
  pv->pv_va |= 0x2LL;
 __mtx_leave(&pg->mdpage.pvmtx );
 return (ref);
}
void
pmap_unwire(struct pmap *pmap, vaddr_t va)
{
 int64_t data;
 if (pmap == ((void *)0))
  return;
 if (pmap == (&kernel_pmap_) && va >= ktext &&
  va < ((((ekdata)+((4*(1<<20))-1))/(4*(1<<20)))*(4*(1<<20)))) {
  prom_printf("pmap_unwire: va=%08x in locked TLB\r\n", va);
  OF_enter();
  return;
 }
 __mtx_enter(&pmap->pm_mtx );
 data = pseg_get(pmap, va & (~((1 << 13) - 1)));
 if ((cputyp == 5))
  data &= ~0x1000000000000000LL;
 else
  data &= ~0x0000000000001000LL;
 if (pseg_set(pmap, va & (~((1 << 13) - 1)), data, 0)) {
  printf("pmap_unwire: gotten pseg empty!\n");
  __asm volatile("ta 1; nop");;
 }
 __mtx_leave(&pmap->pm_mtx );
}
void
pmap_page_protect(struct vm_page *pg, vm_prot_t prot)
{
 paddr_t pa = ((pg)->phys_addr);
 pv_entry_t pv;
 int64_t data, clear, set;
 if (prot & 0x02)
  return;
 if (prot & (0x01 | 0x04)) {
  set = 0x8000000000000000LL;
  if ((cputyp == 5)) {
   clear = 0x2000000000000000LL|0x0000000000000040LL;
   if (0x04 & prot)
    set |= 0x0000000000000080LL;
   else
    clear |= 0x0000000000000080LL;
  } else {
   clear = 0x0000000000000400LL|0x0000000000000002LL;
   if (0x04 & prot)
    set |= 0x0000000000000100LL;
   else
    clear |= 0x0000000000000100LL;
   if (0x04 == prot)
    set |= 0x0000000000000080LL;
  }
  pv = pa_to_pvh(pa);
  __mtx_enter(&pg->mdpage.pvmtx );
  if (pv->pv_pmap != ((void *)0)) {
   for (; pv; pv = pv->pv_next) {
    data = pseg_get(pv->pv_pmap, pv->pv_va & (~((1 << 13) - 1)));
    pv->pv_va |= pmap_tte2flags(data);
    data &= ~(clear);
    data |= (set);
    ((void)0);
    if (pseg_set(pv->pv_pmap, pv->pv_va & (~((1 << 13) - 1)), data, 0)) {
     printf("pmap_page_protect: gotten pseg empty!\n");
     __asm volatile("ta 1; nop");;
    }
    if (pv->pv_pmap->pm_ctx || pv->pv_pmap == (&kernel_pmap_)) {
     tsb_invalidate(pv->pv_pmap->pm_ctx,
         (pv->pv_va & (~((1 << 13) - 1))));
     smp_tlb_flush_pte(pv->pv_va & (~((1 << 13) - 1)), pv->pv_pmap->pm_ctx);
    }
   }
  }
  __mtx_leave(&pg->mdpage.pvmtx );
 } else {
  pv_entry_t firstpv;
  firstpv = pa_to_pvh(pa);
  __mtx_enter(&pg->mdpage.pvmtx );
  while ((pv = firstpv->pv_next) != ((void *)0)) {
   data = pseg_get(pv->pv_pmap, pv->pv_va & (~((1 << 13) - 1)));
   firstpv->pv_va |= pmap_tte2flags(data);
   if (pseg_set(pv->pv_pmap, pv->pv_va & (~((1 << 13) - 1)), 0, 0)) {
    printf("pmap_page_protect: gotten pseg empty!\n");
    __asm volatile("ta 1; nop");;
   }
   if (pv->pv_pmap->pm_ctx || pv->pv_pmap == (&kernel_pmap_)) {
    tsb_invalidate(pv->pv_pmap->pm_ctx,
        (pv->pv_va & (~((1 << 13) - 1))));
    smp_tlb_flush_pte(pv->pv_va & (~((1 << 13) - 1)), pv->pv_pmap->pm_ctx);
   }
   ((void)_atomic_sub_long_nv((&pv->pv_pmap->pm_stats.resident_count), 1));
   firstpv->pv_next = pv->pv_next;
   __mtx_leave(&pg->mdpage.pvmtx );
   pool_put(&pv_pool, pv);
   __mtx_enter(&pg->mdpage.pvmtx );
  }
  pv = firstpv;
  if (pv->pv_pmap != ((void *)0)) {
   data = pseg_get(pv->pv_pmap, pv->pv_va & (~((1 << 13) - 1)));
   pv->pv_va |= pmap_tte2flags(data);
   if (pseg_set(pv->pv_pmap, pv->pv_va & (~((1 << 13) - 1)), 0, 0)) {
    printf("pmap_page_protect: gotten pseg empty!\n");
    __asm volatile("ta 1; nop");;
   }
   if (pv->pv_pmap->pm_ctx || pv->pv_pmap == (&kernel_pmap_)) {
    tsb_invalidate(pv->pv_pmap->pm_ctx,
        (pv->pv_va & (~((1 << 13) - 1))));
    smp_tlb_flush_pte(pv->pv_va & (~((1 << 13) - 1)), pv->pv_pmap->pm_ctx);
   }
   ((void)_atomic_sub_long_nv((&pv->pv_pmap->pm_stats.resident_count), 1));
   ((pv->pv_next == ((void *)0)) ? (void)0 : __assert("diagnostic ", "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../arch/sparc64/sparc64/pmap.c", 2569, "pv->pv_next == NULL"));
   pv->pv_pmap = ((void *)0);
  }
  cacheinfo.c_dcache_flush_page(pa);
  __mtx_leave(&pg->mdpage.pvmtx );
 }
}
int
ctx_alloc(struct pmap *pm)
{
 int s, cnum;
 static int next = 0;
 if (pm == (&kernel_pmap_)) {
  printf("ctx_alloc: kernel pmap!\n");
  return (0);
 }
 s = _splraise(7);
 cnum = next;
 do {
  if (cnum >= numctx - 2)
   cnum = 0;
 } while (ctxbusy[++cnum] != 0 && cnum != next);
 if (cnum==0) cnum++;
 if (ctxbusy[cnum]) {
  int i;
  for (i = 0; i < (512 << tsbsize); i++) {
   if (((((int64_t)(tsb_dmmu[i].tag))>>48)&((1<<13)-1)) == cnum)
    tsb_dmmu[i].tag = (~0LL << 48);
   if (((((int64_t)(tsb_immu[i].tag))>>48)&((1<<13)-1)) == cnum)
    tsb_immu[i].tag = (~0LL << 48);
  }
  smp_tlb_flush_ctx(cnum);
 }
 ctxbusy[cnum] = pm->pm_physaddr;
 next = cnum;
 _splx(s);
 pm->pm_ctx = cnum;
 return cnum;
}
void
ctx_free(struct pmap *pm)
{
 int oldctx;
 oldctx = pm->pm_ctx;
 if (oldctx == 0)
  panic("ctx_free: freeing kernel context");
 if (ctxbusy[oldctx] == 0)
  printf("ctx_free: freeing free context %d\n", oldctx);
 if (ctxbusy[oldctx] != pm->pm_physaddr) {
  printf("ctx_free: freeing someone esle's context\n "
         "ctxbusy[%d] = %p, pm(%p)->pm_ctx = %p\n",
         oldctx, (void *)(u_long)ctxbusy[oldctx], pm,
         (void *)(u_long)pm->pm_physaddr);
  __asm volatile("ta 1; nop");;
 }
 ctxbusy[oldctx] = 0;
}
pv_entry_t
pmap_enter_pv(struct pmap *pmap, pv_entry_t npv, vaddr_t va, paddr_t pa)
{
 struct vm_page *pg = PHYS_TO_VM_PAGE(pa);
 pv_entry_t pv = &pg->mdpage.pvent;
 __mtx_enter(&pg->mdpage.pvmtx );
 if (pv->pv_pmap == ((void *)0)) {
  ((pv)->pv_va = (((va) & (~((1 << 13) - 1))) | (((pv)->pv_va) & (0x03fLL))));
  pv->pv_pmap = pmap;
  pv->pv_next = ((void *)0);
  __mtx_leave(&pg->mdpage.pvmtx );
  return (npv);
 }
 if (npv == ((void *)0))
  panic("%s: no pv entries available", __func__);
 if (!(pv->pv_va & 0x1LL)) {
  if ((pv->pv_va ^ va) & (1<<13)) {
   pv->pv_va |= 0x1LL;
   pmap_page_cache(pmap, pa, 0);
  }
 }
 npv->pv_va = va & (~((1 << 13) - 1));
 npv->pv_pmap = pmap;
 npv->pv_next = pv->pv_next;
 pv->pv_next = npv;
 __mtx_leave(&pg->mdpage.pvmtx );
 return (((void *)0));
}
pv_entry_t
pmap_remove_pv(struct pmap *pmap, vaddr_t va, paddr_t pa)
{
 pv_entry_t pv, opv, npv = ((void *)0);
 struct vm_page *pg = PHYS_TO_VM_PAGE(pa);
 int64_t data = 0LL;
 opv = pv = &pg->mdpage.pvent;
 __mtx_enter(&pg->mdpage.pvmtx );
 if (pmap == pv->pv_pmap && (!((((pv)->pv_va) ^ (va)) & (~((1 << 13) - 1))))) {
  data = pseg_get(pv->pv_pmap, pv->pv_va & (~((1 << 13) - 1)));
  npv = pv->pv_next;
  if (npv) {
   pv->pv_va = (pv->pv_va & (0x03fLL)) | npv->pv_va;
   pv->pv_next = npv->pv_next;
   pv->pv_pmap = npv->pv_pmap;
  } else {
   pv->pv_pmap = ((void *)0);
   pv->pv_next = ((void *)0);
   pv->pv_va &= (0x2LL|0x4LL);
  }
 } else {
  for (npv = pv->pv_next; npv; pv = npv, npv = npv->pv_next) {
   if (pmap == npv->pv_pmap && (!((((npv)->pv_va) ^ (va)) & (~((1 << 13) - 1)))))
    goto found;
  }
  __mtx_leave(&pg->mdpage.pvmtx );
  return (((void *)0));
found:
  pv->pv_next = npv->pv_next;
  data = pseg_get(npv->pv_pmap, npv->pv_va & (~((1 << 13) - 1)));
 }
 opv->pv_va |= pmap_tte2flags(data);
 if (opv->pv_va & 0x1LL) {
  opv->pv_va &= ~0x1LL;
  for (pv = opv; pv; pv = pv->pv_next) {
   if ((pv->pv_va ^ opv->pv_va) & (1<<13)) {
    opv->pv_va |= 0x1LL;
   }
  }
  if (!(opv->pv_va & 0x1LL))
   pmap_page_cache(pmap, pa, 1);
 }
 __mtx_leave(&pg->mdpage.pvmtx );
 return (npv);
}
void
pmap_page_cache(struct pmap *pm, paddr_t pa, int mode)
{
 pv_entry_t pv;
 struct vm_page *pg = PHYS_TO_VM_PAGE(pa);
 if ((cputyp == 4) || (cputyp == 5))
  return;
 pv = &pg->mdpage.pvent;
 if (pv == ((void *)0))
  return;
 do { if (((&pg->mdpage.pvmtx)->mtx_owner != (__curcpu->ci_self)) && !(panicstr || db_active)) panic("mutex %p not held in %s", (&pg->mdpage.pvmtx), __func__); } while (0);
 while (pv) {
  vaddr_t va;
  va = (pv->pv_va & (~((1 << 13) - 1)));
  if (pv->pv_va & 0x10LL) {
   if (pseg_set(pv->pv_pmap, va,
       pseg_get(pv->pv_pmap, va) & ~(0x0000000000000010LL|0x0000000000000020LL),
         0)) {
    printf("pmap_page_cache: aliased pseg empty!\n");
    __asm volatile("ta 1; nop");;
   }
  } else if (mode && (!(pv->pv_va & 0x8LL))) {
   if (pseg_set(pv->pv_pmap, va,
       pseg_get(pv->pv_pmap, va) | 0x0000000000000010LL, 0)) {
    printf("pmap_page_cache: aliased pseg empty!\n");
    __asm volatile("ta 1; nop");;
   }
  } else {
   if (pseg_set(pv->pv_pmap, va,
       pseg_get(pv->pv_pmap, va) & ~0x0000000000000010LL, 0)) {
    printf("pmap_page_cache: aliased pseg empty!\n");
    __asm volatile("ta 1; nop");;
   }
  }
  if (pv->pv_pmap->pm_ctx || pv->pv_pmap == (&kernel_pmap_)) {
   tsb_invalidate(pv->pv_pmap->pm_ctx, va);
   smp_tlb_flush_pte(va, pv->pv_pmap->pm_ctx);
  }
  pv = pv->pv_next;
 }
}
int
pmap_get_page(paddr_t *pa, const char *wait, struct pmap *pm)
{
 int reserve = pm == (&kernel_pmap_) ? 0x0001 : 0;
 if (uvm.page_init_done) {
  struct vm_page *pg;
  while ((pg = uvm_pagealloc(((void *)0), 0, ((void *)0),
      0x0002|reserve)) == ((void *)0)) {
   if (wait == ((void *)0))
    return 0;
   uvm_wait(wait);
  }
  pg->wire_count++;
  atomic_clearbits_int(&pg->pg_flags, 0x00000001);
  *pa = ((pg)->phys_addr);
 } else {
  uvm_page_physget(pa);
  prom_claim_phys(*pa, (1 << 13));
  pmap_zero_phys(*pa);
 }
 return (1);
}
void
pmap_free_page(paddr_t pa, struct pmap *pm)
{
 struct vm_page *pg = PHYS_TO_VM_PAGE(pa);
 pg->wire_count = 0;
 uvm_pagefree(pg);
}
void
pmap_remove_holes(struct vmspace *vm)
{
 vaddr_t shole, ehole;
 struct vm_map *map = &vm->vm_map;
 shole = 1L << ((43) - 1);
 ehole = -1L << ((43) - 1);
 shole = ulmax(((map)->min_offset), shole);
 ehole = ulmin(((map)->max_offset), ehole);
 if (ehole <= shole)
  return;
 (void)uvm_map(map, &shole, ehole - shole, ((void *)0), ((voff_t) -1), 0,
     ((0x00) | ((0x00) << 8) | ((0) << 4) | ((1) << 12) | (0x0040000 | 0x0200000 | 0x0010000)));
}
void
db_dump_pv(db_expr_t addr, int have_addr, db_expr_t count, char *modif)
{
 struct pv_entry *pv;
 if (!have_addr) {
  db_printf("Need addr for pv\n");
  return;
 }
 for (pv = pa_to_pvh(addr); pv; pv = pv->pv_next)
  db_printf("pv@%p: next=%p pmap=%p va=0x%llx\n",
     pv, pv->pv_next, pv->pv_pmap,
     (unsigned long long)pv->pv_va);
}
