# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_base.c"
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_base.c"
# 38 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_base.c"
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/types.h" 1
# 43 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/types.h"
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/cdefs.h" 1
# 41 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/cdefs.h"
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/cdefs.h" 1
# 42 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/cdefs.h" 2
# 44 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/types.h" 2

# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/endian.h" 1
# 41 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/endian.h"
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/_endian.h" 1
# 36 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/_endian.h"
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/_types.h" 1
# 37 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/_types.h"
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/_types.h" 1
# 39 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/_types.h"
typedef struct label_t {
 long val[2];
} label_t;
# 60 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/_types.h"
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
# 102 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/_types.h"
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
# 38 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/_types.h" 2

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
# 37 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/_endian.h" 2


# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/endian.h" 1
# 12 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/endian.h"
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
# 40 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/_endian.h" 2
# 42 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/endian.h" 2
# 46 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/types.h" 2





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
# 75 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/types.h"
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
# 223 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/types.h"
struct proc;
struct pgrp;
struct ucred;
struct rusage;
struct file;
struct buf;
struct tty;
struct uio;
# 39 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_base.c" 2
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/param.h" 1
# 47 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/param.h"
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/_null.h" 1
# 48 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/param.h" 2
# 60 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/param.h"
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/syslimits.h" 1
# 61 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/param.h" 2
# 75 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/param.h"
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/errno.h" 1
# 76 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/param.h" 2
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/time.h" 1
# 38 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/time.h"
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/select.h" 1
# 41 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/select.h"
struct timeval {
 time_t tv_sec;
 suseconds_t tv_usec;
};




struct timespec {
 time_t tv_sec;
 long tv_nsec;
};
# 70 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/select.h"
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
# 39 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/time.h" 2
# 72 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/time.h"
struct timezone {
 int tz_minuteswest;
 int tz_dsttime;
};
# 144 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/time.h"
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



# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/_time.h" 1
# 55 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/_time.h"
struct itimerspec {
 struct timespec it_interval;
 struct timespec it_value;
};
# 164 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/time.h" 2


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
# 220 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/time.h"
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
# 278 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/time.h"
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
# 77 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/param.h" 2
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/resource.h" 1
# 58 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/resource.h"
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
# 98 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/resource.h"
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
# 78 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/param.h" 2
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/ucred.h" 1
# 38 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/ucred.h"
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/syslimits.h" 1
# 39 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/ucred.h" 2




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
# 79 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/param.h" 2
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/uio.h" 1
# 51 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/uio.h"
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
# 97 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/uio.h"
int ureadc(int c, struct uio *);

struct file;
int dofilereadv(struct proc *, int, struct file *,
     const struct iovec *, int, int, off_t *, register_t *);
int dofilewritev(struct proc *, int, struct file *,
     const struct iovec *, int, int, off_t *, register_t *);
# 80 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/param.h" 2
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/srp.h" 1
# 22 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/srp.h"
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/refcnt.h" 1
# 22 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/refcnt.h"
struct refcnt {
 unsigned int refs;
};





void refcnt_init(struct refcnt *);
void refcnt_take(struct refcnt *);
int refcnt_rele(struct refcnt *);
void refcnt_rele_wake(struct refcnt *);
void refcnt_finalize(struct refcnt *, const char *);
# 23 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/srp.h" 2
# 32 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/srp.h"
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
# 101 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/srp.h"
void srpl_rc_init(struct srpl_rc *, void (*)(void *, void *),
      void (*)(void *, void *), void *);
# 81 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/param.h" 2



# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/signal.h" 1
# 43 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/signal.h"
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/signal.h" 1
# 50 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/signal.h"
typedef int sig_atomic_t;
# 60 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/signal.h"
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
# 44 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/signal.h" 2
# 104 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/signal.h"
typedef unsigned int sigset_t;


# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/siginfo.h" 1
# 33 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/siginfo.h"
union sigval {
 int sival_int;
 void *sival_ptr;
};
# 132 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/siginfo.h"
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
# 172 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/siginfo.h"
 } _data;
} siginfo_t;
# 196 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/siginfo.h"
void initsiginfo(siginfo_t *, int, u_long, int, union sigval);
# 108 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/signal.h" 2




struct sigaction {
 union {
  void (*__sa_handler)(int);
  void (*__sa_sigaction)(int, siginfo_t *, void *);
 } __sigaction_u;
 sigset_t sa_mask;
 int sa_flags;
};
# 146 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/signal.h"
typedef void (*sig_t)(int);





struct sigvec {
 void (*sv_handler)(int);
 int sv_mask;
 int sv_flags;
};
# 176 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/signal.h"
typedef struct sigaltstack {
 void *ss_sp;
 size_t ss_size;
 int ss_flags;
} stack_t;





typedef struct sigcontext ucontext_t;
# 85 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/param.h" 2


# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/limits.h" 1
# 34 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/limits.h"
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/limits.h" 1
# 35 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/limits.h" 2
# 88 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/param.h" 2
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/param.h" 1
# 152 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/param.h"
extern void delay(unsigned int);


extern int cputyp;
# 184 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/param.h"
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/cpu.h" 1
# 75 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/cpu.h"
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/ctlreg.h" 1
# 553 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/ctlreg.h"
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
# 596 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/ctlreg.h"
extern __inline u_char lduba_asi(paddr_t); extern __inline u_char lduba_asi(paddr_t va) { u_char r; __asm volatile( "lduba" " [%1] %%asi, %0" : "=r" (r) : "r" ((volatile u_char *)va) : "%g0"); return (r); } extern __inline u_char lduba_nc(paddr_t, int); extern __inline u_char lduba_nc(paddr_t va, int asi) { do { if (__builtin_constant_p(0)) __asm volatile("wr %%g0, %0, %%" "asi" : : "rI" ((asi) ^ (0)) : "%g0"); else __asm volatile("wr %0, %1, %%" "asi" : : "r" (asi), "rI" (0) : "%g0"); } while(0); return (lduba_asi(va)); };
extern __inline u_short lduha_asi(paddr_t); extern __inline u_short lduha_asi(paddr_t va) { u_short r; __asm volatile( "lduha" " [%1] %%asi, %0" : "=r" (r) : "r" ((volatile u_short *)va) : "%g0"); return (r); } extern __inline u_short lduha_nc(paddr_t, int); extern __inline u_short lduha_nc(paddr_t va, int asi) { do { if (__builtin_constant_p(0)) __asm volatile("wr %%g0, %0, %%" "asi" : : "rI" ((asi) ^ (0)) : "%g0"); else __asm volatile("wr %0, %1, %%" "asi" : : "r" (asi), "rI" (0) : "%g0"); } while(0); return (lduha_asi(va)); };
extern __inline u_int lduwa_asi(paddr_t); extern __inline u_int lduwa_asi(paddr_t va) { u_int r; __asm volatile( "lduwa" " [%1] %%asi, %0" : "=r" (r) : "r" ((volatile u_int *)va) : "%g0"); return (r); } extern __inline u_int lduwa_nc(paddr_t, int); extern __inline u_int lduwa_nc(paddr_t va, int asi) { do { if (__builtin_constant_p(0)) __asm volatile("wr %%g0, %0, %%" "asi" : : "rI" ((asi) ^ (0)) : "%g0"); else __asm volatile("wr %0, %1, %%" "asi" : : "r" (asi), "rI" (0) : "%g0"); } while(0); return (lduwa_asi(va)); };
extern __inline u_int64_t ldxa_asi(paddr_t); extern __inline u_int64_t ldxa_asi(paddr_t va) { u_int64_t r; __asm volatile( "ldxa" " [%1] %%asi, %0" : "=r" (r) : "r" ((volatile u_int64_t *)va) : "%g0"); return (r); } extern __inline u_int64_t ldxa_nc(paddr_t, int); extern __inline u_int64_t ldxa_nc(paddr_t va, int asi) { do { if (__builtin_constant_p(0)) __asm volatile("wr %%g0, %0, %%" "asi" : : "rI" ((asi) ^ (0)) : "%g0"); else __asm volatile("wr %0, %1, %%" "asi" : : "r" (asi), "rI" (0) : "%g0"); } while(0); return (ldxa_asi(va)); };

extern __inline int lda_asi(paddr_t); extern __inline int lda_asi(paddr_t va) { int r; __asm volatile( "lda" " [%1] %%asi, %0" : "=r" (r) : "r" ((volatile int *)va) : "%g0"); return (r); } extern __inline int lda_nc(paddr_t, int); extern __inline int lda_nc(paddr_t va, int asi) { do { if (__builtin_constant_p(0)) __asm volatile("wr %%g0, %0, %%" "asi" : : "rI" ((asi) ^ (0)) : "%g0"); else __asm volatile("wr %0, %1, %%" "asi" : : "r" (asi), "rI" (0) : "%g0"); } while(0); return (lda_asi(va)); };
# 647 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/ctlreg.h"
extern __inline void stba_asi(paddr_t, u_int8_t); extern __inline void stba_asi(paddr_t va, u_int8_t val) { __asm volatile( "stba" " %0, [%1] %%asi" : : "r" (val), "r" ((volatile u_int8_t *)va) : "memory"); } extern __inline void stba_nc(paddr_t, int, u_int8_t); extern __inline void stba_nc(paddr_t va, int asi, u_int8_t val) { do { if (__builtin_constant_p(0)) __asm volatile("wr %%g0, %0, %%" "asi" : : "rI" ((asi) ^ (0)) : "%g0"); else __asm volatile("wr %0, %1, %%" "asi" : : "r" (asi), "rI" (0) : "%g0"); } while(0); stba_asi(va, val); };
extern __inline void stha_asi(paddr_t, u_int16_t); extern __inline void stha_asi(paddr_t va, u_int16_t val) { __asm volatile( "stha" " %0, [%1] %%asi" : : "r" (val), "r" ((volatile u_int16_t *)va) : "memory"); } extern __inline void stha_nc(paddr_t, int, u_int16_t); extern __inline void stha_nc(paddr_t va, int asi, u_int16_t val) { do { if (__builtin_constant_p(0)) __asm volatile("wr %%g0, %0, %%" "asi" : : "rI" ((asi) ^ (0)) : "%g0"); else __asm volatile("wr %0, %1, %%" "asi" : : "r" (asi), "rI" (0) : "%g0"); } while(0); stha_asi(va, val); };
extern __inline void stwa_asi(paddr_t, u_int32_t); extern __inline void stwa_asi(paddr_t va, u_int32_t val) { __asm volatile( "stwa" " %0, [%1] %%asi" : : "r" (val), "r" ((volatile u_int32_t *)va) : "memory"); } extern __inline void stwa_nc(paddr_t, int, u_int32_t); extern __inline void stwa_nc(paddr_t va, int asi, u_int32_t val) { do { if (__builtin_constant_p(0)) __asm volatile("wr %%g0, %0, %%" "asi" : : "rI" ((asi) ^ (0)) : "%g0"); else __asm volatile("wr %0, %1, %%" "asi" : : "r" (asi), "rI" (0) : "%g0"); } while(0); stwa_asi(va, val); };
extern __inline void stxa_asi(paddr_t, u_int64_t); extern __inline void stxa_asi(paddr_t va, u_int64_t val) { __asm volatile( "stxa" " %0, [%1] %%asi" : : "r" (val), "r" ((volatile u_int64_t *)va) : "memory"); } extern __inline void stxa_nc(paddr_t, int, u_int64_t); extern __inline void stxa_nc(paddr_t va, int asi, u_int64_t val) { do { if (__builtin_constant_p(0)) __asm volatile("wr %%g0, %0, %%" "asi" : : "rI" ((asi) ^ (0)) : "%g0"); else __asm volatile("wr %0, %1, %%" "asi" : : "r" (asi), "rI" (0) : "%g0"); } while(0); stxa_asi(va, val); };

extern __inline void sta_asi(paddr_t, u_int); extern __inline void sta_asi(paddr_t va, u_int val) { __asm volatile( "sta" " %0, [%1] %%asi" : : "r" (val), "r" ((volatile u_int *)va) : "memory"); } extern __inline void sta_nc(paddr_t, int, u_int); extern __inline void sta_nc(paddr_t va, int asi, u_int val) { do { if (__builtin_constant_p(0)) __asm volatile("wr %%g0, %0, %%" "asi" : : "rI" ((asi) ^ (0)) : "%g0"); else __asm volatile("wr %0, %1, %%" "asi" : : "r" (asi), "rI" (0) : "%g0"); } while(0); sta_asi(va, val); };
# 678 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/ctlreg.h"
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
# 76 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/cpu.h" 2
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/psl.h" 1
# 231 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/psl.h"
extern u_int64_t ver;

extern __inline void splx(int);







void splassert_fail(int, int, const char *);
extern int splassert_ctl;
void splassert_check(int, const char *);
# 258 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/psl.h"
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
# 77 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/cpu.h" 2
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/reg.h" 1
# 54 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/reg.h"
struct trapframe32 {
 int tf_psr;
 int tf_pc;
 int tf_npc;
 int tf_y;
 int tf_global[8];
 int tf_out[8];
};
# 71 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/reg.h"
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
# 96 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/reg.h"
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

# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/fsr.h" 1
# 132 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/reg.h" 2
# 147 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/reg.h"
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
# 78 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/cpu.h" 2
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/intr.h" 1
# 36 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/intr.h"
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../arch/sparc64/sparc64/intreg.h" 1
# 57 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../arch/sparc64/sparc64/intreg.h"
struct intrhand;
void send_softint(int cpu, int level, struct intrhand *ih);
# 37 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/intr.h" 2

# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/evcount.h" 1
# 33 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/evcount.h"
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/queue.h" 1
# 34 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/evcount.h" 2

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
# 39 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/intr.h" 2







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
# 107 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/intr.h"
int splraise(int);
void intr_barrier(void *);

void *softintr_establish(int, void (*)(void *), void *);
void softintr_disestablish(void *);
void softintr_schedule(void *);
# 79 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/cpu.h" 2

# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/sched.h" 1
# 96 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/sched.h"
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
# 134 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/sched.h"
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
# 189 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/sched.h"
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/lock.h" 1
# 41 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/lock.h"
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/rwlock.h" 1
# 57 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/rwlock.h"
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/_lock.h" 1
# 51 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/_lock.h"
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
# 58 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/rwlock.h" 2

struct proc;

struct rwlock {
 volatile unsigned long rwl_owner;
 const char *rwl_name;



};
# 127 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/rwlock.h"
struct rrwlock {
 struct rwlock rrwl_lock;
 uint32_t rrwl_wcnt;
};



void _rw_init_flags(struct rwlock *, const char *, int, struct lock_type *);
# 148 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/rwlock.h"
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
# 42 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/lock.h" 2
# 190 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/sched.h" 2







extern struct __mp_lock sched_lock;
# 81 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/cpu.h" 2
# 98 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/cpu.h"
struct cpu_info {
# 108 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/cpu.h"
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
# 186 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/cpu.h"
void cpu_boot_secondary_processors(void);

void sparc64_send_ipi(int, void (*)(void), u_int64_t, u_int64_t);
void sparc64_broadcast_ipi(void (*)(void), u_int64_t, u_int64_t);

void cpu_unidle(struct cpu_info *);
# 259 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/cpu.h"
struct clockframe {
 struct trapframe64 t;
 int saved_intr_level;
};





extern void (*cpu_start_clock)(void);







extern void need_resched(struct cpu_info *);
# 292 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/cpu.h"
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
# 354 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/cpu.h"
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


# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/mplock.h" 1
# 44 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/mplock.h"
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/mplock.h" 1
# 30 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/mplock.h"
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
# 45 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/mplock.h" 2

extern struct __mp_lock kernel_lock;
# 372 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/cpu.h" 2
# 185 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/param.h" 2
# 89 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/param.h" 2
# 40 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_base.c" 2
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/systm.h" 1
# 44 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/systm.h"
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/stdarg.h" 1
# 29 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/stdarg.h"
typedef __builtin_va_list __gnuc_va_list;
# 41 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/stdarg.h"
typedef __gnuc_va_list va_list;
# 45 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/systm.h" 2
# 73 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/systm.h"
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
# 131 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/systm.h"
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
# 290 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/systm.h"
struct uio;
int uiomove(void *, size_t, struct uio *);





extern struct rwlock netlock;
# 324 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/systm.h"
__attribute__((returns_twice)) int setjmp(label_t *);
__attribute__((__noreturn__)) void longjmp(label_t *);


void consinit(void);

void cpu_startup(void);
void cpu_configure(void);
void diskconf(void);

int nfs_mountroot(void);
int dk_mountroot(void);
extern int (*mountroot)(void);

# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../lib/libkern/libkern.h" 1
# 46 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../lib/libkern/libkern.h"
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
# 161 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../lib/libkern/libkern.h"
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
# 339 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/systm.h" 2
# 354 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/systm.h"
void db_enter(void);



void user_config(void);



void _kernel_lock_init(void);
void _kernel_lock(const char *, int);
void _kernel_unlock(void);
int _kernel_lock_held(void);
# 41 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_base.c" 2
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/kernel.h" 1
# 43 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/kernel.h"
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
# 42 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_base.c" 2

# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/errno.h" 1
# 44 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_base.c" 2
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/device.h" 1
# 53 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/device.h"
enum devclass {
 DV_DULL,
 DV_CPU,
 DV_DISK,
 DV_IFNET,
 DV_TAPE,
 DV_TTY
};
# 72 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/device.h"
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
# 127 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/device.h"
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
# 45 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_base.c" 2
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/pool.h" 1
# 49 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/pool.h"
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




# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/tree.h" 1
# 767 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/tree.h"
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
# 791 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/tree.h"
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
# 100 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/pool.h" 2
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/mutex.h" 1
# 45 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/mutex.h"
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/mutex.h" 1
# 33 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/mutex.h"
struct mutex {
 volatile void *mtx_owner;
 int mtx_wantipl;
 int mtx_oldipl;



};
# 64 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/machine/mutex.h"
void __mtx_init(struct mutex *, int);
# 46 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/mutex.h" 2
# 74 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/mutex.h"
void __mtx_enter(struct mutex *);
int __mtx_enter_try(struct mutex *);
void __mtx_leave(struct mutex *);
# 101 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/pool.h" 2

struct pool;
struct pool_request;
struct pool_requests { struct pool_request *tqh_first; struct pool_request **tqh_last; };

struct pool_allocator {
 void *(*pa_alloc)(struct pool *, int, int *);
 void (*pa_free)(struct pool *, void *);
 size_t pa_pagesz;
};
# 138 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/pool.h"
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
# 46 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_base.c" 2
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/task.h" 1
# 24 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/task.h"
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
# 47 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_base.c" 2

# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_all.h" 1
# 48 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_all.h"
struct scsi_generic {
 u_int8_t opcode;
 u_int8_t bytes[15];
};

struct scsi_test_unit_ready {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t unused[3];
 u_int8_t control;
};

struct scsi_send_diag {
 u_int8_t opcode;
 u_int8_t byte2;




 u_int8_t unused[1];
 u_int8_t paramlen[2];
 u_int8_t control;
};

struct scsi_sense {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t unused[2];
 u_int8_t length;
 u_int8_t control;
};

struct scsi_inquiry {
 u_int8_t opcode;
 u_int8_t flags;

 u_int8_t pagecode;




 u_int8_t length[2];
 u_int8_t control;
};

struct scsi_mode_sense {
 u_int8_t opcode;
 u_int8_t byte2;

 u_int8_t page;






 u_int8_t unused;
 u_int8_t length;
 u_int8_t control;
};

struct scsi_mode_sense_big {
 u_int8_t opcode;
 u_int8_t byte2;

 u_int8_t page;
 u_int8_t unused[4];
 u_int8_t length[2];
 u_int8_t control;
};

struct scsi_mode_select {
 u_int8_t opcode;
 u_int8_t byte2;


 u_int8_t unused[2];
 u_int8_t length;
 u_int8_t control;
};

struct scsi_mode_select_big {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t unused[5];
 u_int8_t length[2];
 u_int8_t control;
};

struct scsi_reserve {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t unused[2];
 u_int8_t length;
 u_int8_t control;
};

struct scsi_release {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t unused[2];
 u_int8_t length;
 u_int8_t control;
};

struct scsi_prevent {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t unused[2];
 u_int8_t how;
 u_int8_t control;
};



struct scsi_report_luns {
 u_int8_t opcode;
 u_int8_t unused;
 u_int8_t selectreport;



 u_int8_t unused2[3];
 u_int8_t length[4];
 u_int8_t unused4;
 u_int8_t control;
};
# 224 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_all.h"
struct scsi_inquiry_data {
 u_int8_t device;






 u_int8_t dev_qual2;


 u_int8_t version;



 u_int8_t response_format;
 u_int8_t additional_length;


 u_int8_t unused[2];
 u_int8_t flags;







 char vendor[8];
 char product[16];
 char revision[4];
 u_int8_t extra[20];
 u_int8_t flags2;



 u_int8_t reserved;
};

struct scsi_vpd_hdr {
 u_int8_t device;
 u_int8_t page_code;
 u_int8_t page_length[2];
};

struct scsi_vpd_serial {
 struct scsi_vpd_hdr hdr;
 char serial[32];
};
# 285 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_all.h"
struct scsi_vpd_devid_hdr {
 u_int8_t pi_code;





 u_int8_t flags;
# 308 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_all.h"
 u_int8_t reserved;
 u_int8_t len;
};

struct scsi_vpd_ata {
 struct scsi_vpd_hdr hdr;

 u_int8_t _reserved1[4];
 u_int8_t sat_vendor[8];
 u_int8_t sat_product[16];
 u_int8_t sat_revision[4];
 u_int8_t device_signature[20];
 u_int8_t command_code;


 u_int8_t _reserved2[3];
 u_int8_t identify[512];
};

struct scsi_sense_data_unextended {
       u_int8_t error_code;
       u_int8_t block[3];
};

struct scsi_sense_data {
       u_int8_t error_code;




       u_int8_t segment;
       u_int8_t flags;




       u_int8_t info[4];
       u_int8_t extra_len;
       u_int8_t cmd_spec_info[4];
       u_int8_t add_sense_code;
       u_int8_t add_sense_code_qual;
       u_int8_t fru;
       u_int8_t sense_key_spec_1;





       u_int8_t sense_key_spec_2;
       u_int8_t sense_key_spec_3;
};
# 417 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_all.h"
struct scsi_blk_desc {
 u_int8_t density;
 u_int8_t nblocks[3];
 u_int8_t reserved;
 u_int8_t blklen[3];
};

struct scsi_direct_blk_desc {
 u_int8_t nblocks[4];
 u_int8_t density;
 u_int8_t blklen[3];
};

struct scsi_blk_desc_big {
 u_int8_t nblocks[8];
 u_int8_t density;
 u_int8_t reserved[3];
 u_int8_t blklen[4];
};

struct scsi_mode_header {
 u_int8_t data_length;
 u_int8_t medium_type;
 u_int8_t dev_spec;
 u_int8_t blk_desc_len;
};

struct scsi_mode_header_big {
 u_int8_t data_length[2];
 u_int8_t medium_type;
 u_int8_t dev_spec;
 u_int8_t reserved;

 u_int8_t reserved2;
 u_int8_t blk_desc_len[2];
};




union scsi_mode_sense_buf {
 struct scsi_mode_header hdr;
 struct scsi_mode_header_big hdr_big;
 u_char buf[254];


} __attribute__((__packed__));

struct scsi_report_luns_data {
 u_int8_t length[4];
 u_int8_t reserved[4];




 struct {
  u_int8_t lundata[8];
 } luns[256];
};
# 510 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_all.h"
struct scsi_ata_passthru_12 {
 u_int8_t opcode;
 u_int8_t count_proto;
 u_int8_t flags;
 u_int8_t features;
 u_int8_t sector_count;
 u_int8_t lba_low;
 u_int8_t lba_mid;
 u_int8_t lba_high;
 u_int8_t device;
 u_int8_t command;
 u_int8_t _reserved;
 u_int8_t control;
};

struct scsi_ata_passthru_16 {
 u_int8_t opcode;
 u_int8_t count_proto;
 u_int8_t flags;
 u_int8_t features[2];
 u_int8_t sector_count[2];
 u_int8_t lba_low[2];
 u_int8_t lba_mid[2];
 u_int8_t lba_high[2];
 u_int8_t device;
 u_int8_t command;
 u_int8_t control;
};




struct scsi_status_iu_header {
       u_int8_t reserved[2];
       u_int8_t flags;


       u_int8_t status;
       u_int8_t sense_length[4];
       u_int8_t pkt_failures_length[4];
 u_int8_t data[1];
};
# 49 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_base.c" 2
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_disk.h" 1
# 64 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_disk.h"
struct scsi_format_unit {
 u_int8_t opcode;
 u_int8_t flags;



 u_int8_t vendor_specific;
 u_int8_t interleave[2];
 u_int8_t control;
};
# 84 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_disk.h"
struct scsi_format_unit_defect_list_header {
 u_int8_t reserved;
 u_int8_t flags;
# 95 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_disk.h"
 u_int8_t defect_lst_len[2];
};





struct scsi_initialization_pattern_descriptor {
 u_int8_t ip_modifier;
 u_int8_t pattern_type;




 u_int8_t pattern_length[2];



};
# 122 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_disk.h"
struct scsi_defect_descriptor_bf {
 u_int8_t block_address[4];
};


struct scsi_defect_descriptor_bfif {
 u_int8_t cylinder[2];
 u_int8_t head;
 u_int8_t bytes_from_index[2];
};


struct scsi_defect_descriptor_psf {
 u_int8_t cylinder[2];
 u_int8_t head;
 u_int8_t sector[2];
};


struct scsi_reassign_blocks {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t unused[3];
 u_int8_t control;
};





struct scsi_rezero_unit {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t reserved[3];
 u_int8_t control;
};

struct scsi_rw {
 u_int8_t opcode;
 u_int8_t addr[3];

 u_int8_t length;
 u_int8_t control;
};

struct scsi_rw_big {
 u_int8_t opcode;
 u_int8_t byte2;

 u_int8_t addr[4];
 u_int8_t reserved;
 u_int8_t length[2];
 u_int8_t control;
};

struct scsi_rw_12 {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t addr[4];
 u_int8_t length[4];
 u_int8_t reserved;
 u_int8_t control;
};

struct scsi_rw_16 {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t addr[8];
 u_int8_t length[4];
 u_int8_t reserved;
 u_int8_t control;
};

struct scsi_write_same_10 {
 u_int8_t opcode;
 u_int8_t flags;


 u_int8_t lba[4];
 u_int8_t group_number;
 u_int8_t length[2];
 u_int8_t control;
};

struct scsi_write_same_16 {
 u_int8_t opcode;
 u_int8_t flags;



 u_int8_t lba[8];
 u_int8_t length[4];
 u_int8_t group_number;
 u_int8_t control;
};

struct scsi_unmap {
 u_int8_t opcode;
 u_int8_t anchor;
 u_int8_t _reserved[4];
 u_int8_t group_number;
 u_int8_t list_len[2];
 u_int8_t control;
};

struct scsi_unmap_data {
 u_int8_t data_length[2];
 u_int8_t desc_length[2];
 u_int8_t _reserved[4];


};

struct scsi_unmap_desc {
 u_int8_t logical_addr[8];
 u_int8_t logical_blocks[4];
 u_int8_t _reserved[4];
};

struct scsi_read_capacity {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t addr[4];
 u_int8_t unused[3];
 u_int8_t control;
};

struct scsi_read_capacity_16 {
 u_int8_t opcode;
 u_int8_t byte2;

 u_int8_t addr[8];
 u_int8_t length[4];
 u_int8_t reserved;
 u_int8_t control;
};

struct scsi_start_stop {
 u_int8_t opcode;
 u_int8_t byte2;
 u_int8_t unused[2];
 u_int8_t how;



 u_int8_t control;
};





struct scsi_synchronize_cache {
 u_int8_t opcode;
 u_int8_t flags;


 u_int8_t addr[4];
 u_int8_t reserved;
 u_int8_t length[2];
 u_int8_t control;
};
# 307 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_disk.h"
struct scsi_read_cap_data {
 u_int8_t addr[4];
 u_int8_t length[4];
};

struct scsi_read_cap_data_16 {
 u_int8_t addr[8];
 u_int8_t length[4];
 u_int8_t p_type_prot;
 u_int8_t logical_per_phys;
 u_int8_t lowest_aligned[2];


 u_int8_t reserved[16];
};

struct scsi_reassign_blocks_data {
 u_int8_t reserved[2];
 u_int8_t length[2];
 struct {
  u_int8_t dlbaddr[4];
 } defect_descriptor[1];
};
# 339 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_disk.h"
struct page_disk_format {
 u_int8_t pg_code;
 u_int8_t pg_length;
 u_int8_t trk_z[2];
 u_int8_t alt_sec[2];
 u_int8_t alt_trk_z[2];
 u_int8_t alt_trk_v[2];
 u_int8_t ph_sec_t[2];
 u_int8_t bytes_s[2];
 u_int8_t interleave[2];
 u_int8_t trk_skew[2];
 u_int8_t cyl_skew[2];
 u_int8_t flags;




 u_int8_t reserved1;
 u_int8_t reserved2;
 u_int8_t reserved3;
};

struct page_rigid_geometry {
 u_int8_t pg_code;
 u_int8_t pg_length;
 u_int8_t ncyl[3];
 u_int8_t nheads;
 u_int8_t st_cyl_wp[3];
 u_int8_t st_cyl_rwc[3];
 u_int8_t driv_step[2];
 u_int8_t land_zone[3];
 u_int8_t sp_sync_ctl;





 u_int8_t rot_offset;
 u_int8_t reserved1;
 u_int8_t rpm[2];
 u_int8_t reserved2;
 u_int8_t reserved3;
};

struct page_flex_geometry {
 u_int8_t pg_code;
 u_int8_t pg_length;
 u_int8_t xfr_rate[2];
 u_int8_t nheads;
 u_int8_t ph_sec_tr;
 u_int8_t bytes_s[2];
 u_int8_t ncyl[2];
 u_int8_t st_cyl_wp[2];
 u_int8_t st_cyl_rwc[2];
 u_int8_t driv_step[2];
 u_int8_t driv_step_w;
 u_int8_t head_settle[2];
 u_int8_t motor_on;
 u_int8_t motor_off;
 u_int8_t flags;



 u_int8_t step_p_cyl;
 u_int8_t write_pre;
 u_int8_t head_load;
 u_int8_t head_unload;
 u_int8_t pin_34_2;
 u_int8_t pin_4_1;
 u_int8_t rpm[2];
 u_int8_t reserved1;
 u_int8_t reserved2;
};

struct page_reduced_geometry {
 u_int8_t pg_code;
 u_int8_t pg_length;
 u_int8_t wcd;
 u_int8_t bytes_s[2];
 u_int8_t sectors[5];
 u_int8_t pow_perf;
 u_int8_t flags;




 u_int8_t reserved;
};

struct page_caching_mode {
 u_int8_t pg_code;
 u_int8_t pg_length;
 u_int8_t flags;
# 440 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_disk.h"
 u_int8_t priority;


 u_int8_t dis_prefetch_tl[2];
 u_int8_t min_prefetch[2];
 u_int8_t max_prefetch[2];
 u_int8_t max_prefetch_ceil[2];
};





struct scsi_vpd_disk_limits {
 struct scsi_vpd_hdr hdr;



 u_int8_t _reserved1[1];
 u_int8_t max_comp_wr_len;
 u_int8_t optimal_xfer_granularity[2];

 u_int8_t max_xfer_len[4];

 u_int8_t optimal_xfer[4];

 u_int8_t max_xd_prefetch_len[4];

 u_int8_t max_unmap_lba_count[4];

 u_int8_t max_unmap_desc_count[4];

 u_int8_t optimal_unmap_granularity[4];

 u_int8_t unmap_granularity_align[4];


 u_int8_t _reserved2[28];
};

struct scsi_vpd_disk_info {
 struct scsi_vpd_hdr hdr;
 u_int8_t rpm[2];


 u_int8_t _reserved1[1];
 u_int8_t form_factor;







 u_int8_t _reserved2[56];
};

struct scsi_vpd_disk_thin {
 struct scsi_vpd_hdr hdr;

 u_int8_t threshold_exponent;
 u_int8_t flags;






 u_int8_t _reserved1[2];


};
# 50 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_base.c" 2
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsiconf.h" 1
# 54 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsiconf.h"
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/timeout.h" 1
# 54 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/timeout.h"
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
# 89 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/timeout.h"
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
# 55 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsiconf.h" 2

# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_debug.h" 1
# 36 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_debug.h"
extern u_int32_t scsidebug_buses, scsidebug_targets, scsidebug_luns;
extern int scsidebug_level;
# 57 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsiconf.h" 2

static __inline void _lto2b(u_int32_t val, u_int8_t *bytes);
static __inline void _lto3b(u_int32_t val, u_int8_t *bytes);
static __inline void _lto4b(u_int32_t val, u_int8_t *bytes);
static __inline void _lto8b(u_int64_t val, u_int8_t *bytes);
static __inline u_int32_t _2btol(u_int8_t *bytes);
static __inline u_int32_t _3btol(u_int8_t *bytes);
static __inline u_int32_t _4btol(u_int8_t *bytes);
static __inline u_int64_t _5btol(u_int8_t *bytes);
static __inline u_int64_t _8btol(u_int8_t *bytes);

static __inline void
_lto2b(u_int32_t val, u_int8_t *bytes)
{

 bytes[0] = (val >> 8) & 0xff;
 bytes[1] = val & 0xff;
}

static __inline void
_lto3b(u_int32_t val, u_int8_t *bytes)
{

 bytes[0] = (val >> 16) & 0xff;
 bytes[1] = (val >> 8) & 0xff;
 bytes[2] = val & 0xff;
}

static __inline void
_lto4b(u_int32_t val, u_int8_t *bytes)
{

 bytes[0] = (val >> 24) & 0xff;
 bytes[1] = (val >> 16) & 0xff;
 bytes[2] = (val >> 8) & 0xff;
 bytes[3] = val & 0xff;
}

static __inline void
_lto8b(u_int64_t val, u_int8_t *bytes)
{

 bytes[0] = (val >> 56) & 0xff;
 bytes[1] = (val >> 48) & 0xff;
 bytes[2] = (val >> 40) & 0xff;
 bytes[3] = (val >> 32) & 0xff;
 bytes[4] = (val >> 24) & 0xff;
 bytes[5] = (val >> 16) & 0xff;
 bytes[6] = (val >> 8) & 0xff;
 bytes[7] = val & 0xff;
}

static __inline u_int32_t
_2btol(u_int8_t *bytes)
{
 u_int32_t rv;

 rv = (bytes[0] << 8) | bytes[1];
 return (rv);
}

static __inline u_int32_t
_3btol(u_int8_t *bytes)
{
 u_int32_t rv;

 rv = (bytes[0] << 16) | (bytes[1] << 8) | bytes[2];
 return (rv);
}

static __inline u_int32_t
_4btol(u_int8_t *bytes)
{
 u_int32_t rv;

 rv = (bytes[0] << 24) | (bytes[1] << 16) |
     (bytes[2] << 8) | bytes[3];
 return (rv);
}

static __inline u_int64_t
_5btol(u_int8_t *bytes)
{
 u_int64_t rv;

 rv = ((u_int64_t)bytes[0] << 32) |
      ((u_int64_t)bytes[1] << 24) |
      ((u_int64_t)bytes[2] << 16) |
      ((u_int64_t)bytes[3] << 8) |
      (u_int64_t)bytes[4];
 return (rv);
}

static __inline u_int64_t
_8btol(u_int8_t *bytes)
{
 u_int64_t rv;

 rv = (((u_int64_t)bytes[0]) << 56) |
     (((u_int64_t)bytes[1]) << 48) |
     (((u_int64_t)bytes[2]) << 40) |
     (((u_int64_t)bytes[3]) << 32) |
     (((u_int64_t)bytes[4]) << 24) |
     (((u_int64_t)bytes[5]) << 16) |
     (((u_int64_t)bytes[6]) << 8) |
     ((u_int64_t)bytes[7]);
 return (rv);
}
# 175 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsiconf.h"
struct devid {
 u_int8_t d_type;
 u_int8_t d_flags;

 u_int8_t d_refcount;
 u_int8_t d_len;





};
# 197 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsiconf.h"
struct devid * devid_alloc(u_int8_t, u_int8_t, u_int8_t, u_int8_t *);
struct devid * devid_copy(struct devid *);
void devid_free(struct devid *);
# 228 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsiconf.h"
struct scsi_xfer;
struct scsi_link;
struct scsibus_softc;




extern int scsi_autoconf;






struct scsi_adapter {
 void (*scsi_cmd)(struct scsi_xfer *);
 void (*scsi_minphys)(struct buf *, struct scsi_link *);
 int (*dev_probe)(struct scsi_link *);
 void (*dev_free)(struct scsi_link *);
 int (*ioctl)(struct scsi_link *, u_long, caddr_t, int);
};

struct scsi_iopool;

struct scsi_iohandler {
 struct { struct scsi_iohandler *tqe_next; struct scsi_iohandler **tqe_prev; } q_entry;
 u_int q_state;

 struct scsi_iopool *pool;
 void (*handler)(void *, void *);
 void *cookie;
};
struct scsi_runq { struct scsi_iohandler *tqh_first; struct scsi_iohandler **tqh_last; };

struct scsi_iopool {

 void *iocookie;






 void *(*io_get)(void *);
 void (*io_put)(void *, void *);


 struct scsi_runq queue;

 u_int running;

 struct mutex mtx;
};

struct scsi_xshandler {
 struct scsi_iohandler ioh;

 struct scsi_link *link;
 void (*handler)(struct scsi_xfer *);
};







struct scsi_link {
 struct { struct scsi_link *sle_next; } bus_list;

 u_int state;



 u_int8_t scsibus;
 u_int8_t luns;
 u_int16_t target;
 u_int16_t lun;
 u_int16_t openings;
 u_int64_t port_wwn;
 u_int64_t node_wwn;
 u_int16_t adapter_target;
 u_int16_t adapter_buswidth;
 u_int16_t flags;
# 323 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsiconf.h"
 u_int16_t quirks;
# 334 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsiconf.h"
 int (*interpret_sense)(struct scsi_xfer *);
 void *device_softc;
 struct scsi_adapter *adapter;
 void *adapter_softc;
 struct scsibus_softc *bus;
 struct scsi_inquiry_data inqdata;
 struct devid *id;

 struct scsi_runq queue;
 u_int running;
 u_short pending;

 struct scsi_iopool *pool;
};

int scsiprint(void *, const char *);





struct scsi_inquiry_pattern {
 u_int8_t type;
 int removable;
 char *vendor;
 char *product;
 char *revision;
};

struct scsibus_attach_args {
 struct scsi_link *saa_sc_link;
};
# 375 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsiconf.h"
struct scsibus_softc {
 struct device sc_dev;
 struct scsi_link *adapter_link;
 struct { struct scsi_link *slh_first; } sc_link_list;
 u_int16_t sc_buswidth;
};





struct scsi_attach_args {
 struct scsi_link *sa_sc_link;
 struct scsi_inquiry_data *sa_inqbuf;
};







struct scsi_xfer {
 struct { struct scsi_xfer *sqe_next; } xfer_list;
 int flags;
 struct scsi_link *sc_link;
 int retries;
 int timeout;
 struct scsi_generic *cmd;
 int cmdlen;
 u_char *data;
 int datalen;
 size_t resid;
 int error;
 struct buf *bp;
 struct scsi_sense_data sense;
 u_int8_t status;
 struct scsi_generic cmdstore;



 struct timeout stimeout;
 void *cookie;
 void (*done)(struct scsi_xfer *);

 void *io;
};
struct scsi_xfer_list { struct scsi_xfer *sqh_first; struct scsi_xfer **sqh_last; };
# 473 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsiconf.h"
const void *scsi_inqmatch(struct scsi_inquiry_data *, const void *, int,
     int, int *);

void scsi_init(void);
int scsi_test_unit_ready(struct scsi_link *, int, int);
int scsi_inquire(struct scsi_link *, struct scsi_inquiry_data *, int);
int scsi_inquire_vpd(struct scsi_link *, void *, u_int, u_int8_t, int);
void scsi_init_inquiry(struct scsi_xfer *, u_int8_t, u_int8_t,
     void *, size_t);
int scsi_prevent(struct scsi_link *, int, int);
int scsi_start(struct scsi_link *, int, int);
int scsi_mode_sense(struct scsi_link *, int, int, struct scsi_mode_header *,
     size_t, int, int);
int scsi_mode_sense_big(struct scsi_link *, int, int,
     struct scsi_mode_header_big *, size_t, int, int);
void * scsi_mode_sense_page(struct scsi_mode_header *, int);
void * scsi_mode_sense_big_page(struct scsi_mode_header_big *, int);
int scsi_do_mode_sense(struct scsi_link *, int,
     union scsi_mode_sense_buf *, void **, u_int32_t *, u_int64_t *,
     u_int32_t *, int, int, int *);
int scsi_mode_select(struct scsi_link *, int, struct scsi_mode_header *,
     int, int);
int scsi_mode_select_big(struct scsi_link *, int,
     struct scsi_mode_header_big *, int, int);
void scsi_done(struct scsi_xfer *);
int scsi_do_ioctl(struct scsi_link *, u_long, caddr_t, int);
void sc_print_addr(struct scsi_link *);
int scsi_report_luns(struct scsi_link *, int,
     struct scsi_report_luns_data *, u_int32_t, int, int);
void scsi_minphys(struct buf *, struct scsi_link *);
int scsi_interpret_sense(struct scsi_xfer *);

void scsi_xs_show(struct scsi_xfer *);
void scsi_print_sense(struct scsi_xfer *);
void scsi_show_mem(u_char *, int);
void scsi_strvis(u_char *, u_char *, int);
int scsi_delay(struct scsi_xfer *, int);

int scsi_probe(struct scsibus_softc *, int, int);
int scsi_probe_bus(struct scsibus_softc *);
int scsi_probe_target(struct scsibus_softc *, int);
int scsi_probe_lun(struct scsibus_softc *, int, int);

int scsi_detach(struct scsibus_softc *, int, int, int);
int scsi_detach_bus(struct scsibus_softc *, int);
int scsi_detach_target(struct scsibus_softc *, int, int);
int scsi_detach_lun(struct scsibus_softc *, int, int, int);

int scsi_req_probe(struct scsibus_softc *, int, int);
int scsi_req_detach(struct scsibus_softc *, int, int, int);

int scsi_activate(struct scsibus_softc *, int, int, int);

struct scsi_link * scsi_get_link(struct scsibus_softc *, int, int);
void scsi_add_link(struct scsibus_softc *,
       struct scsi_link *);
void scsi_remove_link(struct scsibus_softc *,
       struct scsi_link *);

extern const u_int8_t version_to_spc[];


struct scsi_xfer * scsi_xs_get(struct scsi_link *, int);
void scsi_xs_exec(struct scsi_xfer *);
int scsi_xs_sync(struct scsi_xfer *);
void scsi_xs_put(struct scsi_xfer *);







void scsi_iopool_init(struct scsi_iopool *, void *,
     void *(*)(void *), void (*)(void *, void *));
void scsi_iopool_run(struct scsi_iopool *);
void scsi_iopool_destroy(struct scsi_iopool *);
void scsi_link_shutdown(struct scsi_link *);

void * scsi_io_get(struct scsi_iopool *, int);
void scsi_io_put(struct scsi_iopool *, void *);





void * scsi_default_get(void *);
void scsi_default_put(void *, void *);




void scsi_ioh_set(struct scsi_iohandler *, struct scsi_iopool *,
     void (*)(void *, void *), void *);
int scsi_ioh_add(struct scsi_iohandler *);
int scsi_ioh_del(struct scsi_iohandler *);

void scsi_xsh_set(struct scsi_xshandler *, struct scsi_link *,
     void (*)(struct scsi_xfer *));
int scsi_xsh_add(struct scsi_xshandler *);
int scsi_xsh_del(struct scsi_xshandler *);




int scsi_pending_start(struct mutex *, u_int *);
int scsi_pending_finish(struct mutex *, u_int *);




void scsi_cmd_rw_decode(struct scsi_generic *, u_int64_t *, u_int32_t *);
# 51 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_base.c" 2

static __inline void asc2ascii(u_int8_t, u_int8_t ascq, char *result,
    size_t len);
int scsi_xs_error(struct scsi_xfer *);
char *scsi_decode_sense(struct scsi_sense_data *, int);

void scsi_xs_sync_done(struct scsi_xfer *);






struct pool scsi_xfer_pool;
struct pool scsi_plug_pool;

struct scsi_plug {
 struct task task;
 struct scsibus_softc *sb;
 int target;
 int lun;
 int how;
};

void scsi_plug_probe(void *);
void scsi_plug_detach(void *);

struct scsi_xfer * scsi_xs_io(struct scsi_link *, void *, int);

int scsi_ioh_pending(struct scsi_iopool *);
struct scsi_iohandler * scsi_ioh_deq(struct scsi_iopool *);

void scsi_xsh_runqueue(struct scsi_link *);
void scsi_xsh_ioh(void *, void *);

int scsi_link_open(struct scsi_link *);
void scsi_link_close(struct scsi_link *);

void * scsi_iopool_get(struct scsi_iopool *);
void scsi_iopool_put(struct scsi_iopool *, void *);







struct scsi_io_mover {
 struct mutex mtx;
 void *io;
 u_int done;
};


void scsi_move(struct scsi_io_mover *);
void scsi_move_done(void *, void *);

void scsi_io_get_done(void *, void *);
void scsi_xs_get_done(void *, void *);




void
scsi_init(void)
{
 static int scsi_init_done;

 if (scsi_init_done)
  return;
 scsi_init_done = 1;







 pool_init(&scsi_xfer_pool, sizeof(struct scsi_xfer), 0, 5, 0,
     "scxspl", ((void *)0));
 pool_init(&scsi_plug_pool, sizeof(struct scsi_plug), 0, 5, 0,
     "scsiplug", ((void *)0));
}

int
scsi_req_probe(struct scsibus_softc *sb, int target, int lun)
{
 struct scsi_plug *p;

 p = pool_get(&scsi_plug_pool, 0x0002);
 if (p == ((void *)0))
  return (12);

 task_set(&p->task, scsi_plug_probe, p);
 p->sb = sb;
 p->target = target;
 p->lun = lun;

 task_add(systq, &p->task);

 return (0);
}

int
scsi_req_detach(struct scsibus_softc *sb, int target, int lun, int how)
{
 struct scsi_plug *p;

 p = pool_get(&scsi_plug_pool, 0x0002);
 if (p == ((void *)0))
  return (12);

 task_set(&p->task, scsi_plug_detach, p);
 p->sb = sb;
 p->target = target;
 p->lun = lun;
 p->how = how;

 task_add(systq, &p->task);

 return (0);
}

void
scsi_plug_probe(void *xp)
{
 struct scsi_plug *p = xp;
 struct scsibus_softc *sb = p->sb;
 int target = p->target, lun = p->lun;

 pool_put(&scsi_plug_pool, p);

 scsi_probe(sb, target, lun);
}

void
scsi_plug_detach(void *xp)
{
 struct scsi_plug *p = xp;
 struct scsibus_softc *sb = p->sb;
 int target = p->target, lun = p->lun;
 int how = p->how;

 pool_put(&scsi_plug_pool, p);

 scsi_detach(sb, target, lun, how);
}

int
scsi_pending_start(struct mutex *mtx, u_int *running)
{
 int rv = 1;

 __mtx_enter(mtx);
 (*running)++;
 if ((*running) > 1)
  rv = 0;
 __mtx_leave(mtx);

 return (rv);
}

int
scsi_pending_finish(struct mutex *mtx, u_int *running)
{
 int rv = 1;

 __mtx_enter(mtx);
 (*running)--;
 if ((*running) > 0) {
  (*running) = 1;
  rv = 0;
 }
 __mtx_leave(mtx);

 return (rv);
}

void
scsi_iopool_init(struct scsi_iopool *iopl, void *iocookie,
    void *(*io_get)(void *), void (*io_put)(void *, void *))
{
 iopl->iocookie = iocookie;
 iopl->io_get = io_get;
 iopl->io_put = io_put;

 do { (&iopl->queue)->tqh_first = ((void *)0); (&iopl->queue)->tqh_last = &(&iopl->queue)->tqh_first; } while (0);
 iopl->running = 0;
 __mtx_init((&iopl->mtx), ((((5)) > 0 && ((5)) < 12) ? 12 : ((5))));
}

void *
scsi_iopool_get(struct scsi_iopool *iopl)
{
 void *io;

 _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_base.c", 247);
 io = iopl->io_get(iopl->iocookie);
 _kernel_unlock();

 return (io);
}

void
scsi_iopool_put(struct scsi_iopool *iopl, void *io)
{
 _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_base.c", 257);
 iopl->io_put(iopl->iocookie, io);
 _kernel_unlock();
}

void
scsi_iopool_destroy(struct scsi_iopool *iopl)
{
 struct scsi_runq sleepers = { ((void *)0), &(sleepers).tqh_first };
 struct scsi_iohandler *ioh = ((void *)0);

 __mtx_enter(&iopl->mtx);
 while ((ioh = ((&iopl->queue)->tqh_first)) != ((void *)0)) {
  do { if (((ioh)->q_entry.tqe_next) != ((void *)0)) (ioh)->q_entry.tqe_next->q_entry.tqe_prev = (ioh)->q_entry.tqe_prev; else (&iopl->queue)->tqh_last = (ioh)->q_entry.tqe_prev; *(ioh)->q_entry.tqe_prev = (ioh)->q_entry.tqe_next; ((ioh)->q_entry.tqe_prev) = ((void *)-1); ((ioh)->q_entry.tqe_next) = ((void *)-1); } while (0);
  ioh->q_state = 0;

  if (ioh->handler == scsi_io_get_done)
   do { (ioh)->q_entry.tqe_next = ((void *)0); (ioh)->q_entry.tqe_prev = (&sleepers)->tqh_last; *(&sleepers)->tqh_last = (ioh); (&sleepers)->tqh_last = &(ioh)->q_entry.tqe_next; } while (0);

  else
   panic("scsi_iopool_destroy: scsi_iohandler on pool");

 }
 __mtx_leave(&iopl->mtx);

 while ((ioh = ((&sleepers)->tqh_first)) != ((void *)0)) {
  do { if (((ioh)->q_entry.tqe_next) != ((void *)0)) (ioh)->q_entry.tqe_next->q_entry.tqe_prev = (ioh)->q_entry.tqe_prev; else (&sleepers)->tqh_last = (ioh)->q_entry.tqe_prev; *(ioh)->q_entry.tqe_prev = (ioh)->q_entry.tqe_next; ((ioh)->q_entry.tqe_prev) = ((void *)-1); ((ioh)->q_entry.tqe_next) = ((void *)-1); } while (0);
  ioh->handler(ioh->cookie, ((void *)0));
 }
}

void *
scsi_default_get(void *iocookie)
{
 return (((void *)0x5c5));
}

void
scsi_default_put(void *iocookie, void *io)
{

 if (io != ((void *)0x5c5))
  panic("unexpected opening returned");

}





void
scsi_ioh_set(struct scsi_iohandler *ioh, struct scsi_iopool *iopl,
    void (*handler)(void *, void *), void *cookie)
{
 ioh->q_state = 0;
 ioh->pool = iopl;
 ioh->handler = handler;
 ioh->cookie = cookie;
}

int
scsi_ioh_add(struct scsi_iohandler *ioh)
{
 struct scsi_iopool *iopl = ioh->pool;
 int rv = 0;

 __mtx_enter(&iopl->mtx);
 switch (ioh->q_state) {
 case 0:
  do { (ioh)->q_entry.tqe_next = ((void *)0); (ioh)->q_entry.tqe_prev = (&iopl->queue)->tqh_last; *(&iopl->queue)->tqh_last = (ioh); (&iopl->queue)->tqh_last = &(ioh)->q_entry.tqe_next; } while (0);
  ioh->q_state = 2;
  rv = 1;
  break;

 case 2:
  break;
 default:
  panic("scsi_ioh_add: unexpected state %u", ioh->q_state);

 }
 __mtx_leave(&iopl->mtx);


 scsi_iopool_run(iopl);

 return (rv);
}

int
scsi_ioh_del(struct scsi_iohandler *ioh)
{
 struct scsi_iopool *iopl = ioh->pool;
 int rv = 0;

 __mtx_enter(&iopl->mtx);
 switch (ioh->q_state) {
 case 2:
  do { if (((ioh)->q_entry.tqe_next) != ((void *)0)) (ioh)->q_entry.tqe_next->q_entry.tqe_prev = (ioh)->q_entry.tqe_prev; else (&iopl->queue)->tqh_last = (ioh)->q_entry.tqe_prev; *(ioh)->q_entry.tqe_prev = (ioh)->q_entry.tqe_next; ((ioh)->q_entry.tqe_prev) = ((void *)-1); ((ioh)->q_entry.tqe_next) = ((void *)-1); } while (0);
  ioh->q_state = 0;
  rv = 1;
  break;

 case 0:
  break;
 default:
  panic("scsi_ioh_del: unexpected state %u", ioh->q_state);

 }
 __mtx_leave(&iopl->mtx);

 return (rv);
}





struct scsi_iohandler *
scsi_ioh_deq(struct scsi_iopool *iopl)
{
 struct scsi_iohandler *ioh = ((void *)0);

 __mtx_enter(&iopl->mtx);
 ioh = ((&iopl->queue)->tqh_first);
 if (ioh != ((void *)0)) {
  do { if (((ioh)->q_entry.tqe_next) != ((void *)0)) (ioh)->q_entry.tqe_next->q_entry.tqe_prev = (ioh)->q_entry.tqe_prev; else (&iopl->queue)->tqh_last = (ioh)->q_entry.tqe_prev; *(ioh)->q_entry.tqe_prev = (ioh)->q_entry.tqe_next; ((ioh)->q_entry.tqe_prev) = ((void *)-1); ((ioh)->q_entry.tqe_next) = ((void *)-1); } while (0);
  ioh->q_state = 0;
 }
 __mtx_leave(&iopl->mtx);

 return (ioh);
}

int
scsi_ioh_pending(struct scsi_iopool *iopl)
{
 int rv;

 __mtx_enter(&iopl->mtx);
 rv = !(((&iopl->queue)->tqh_first) == ((void *)0));
 __mtx_leave(&iopl->mtx);

 return (rv);
}

void
scsi_iopool_run(struct scsi_iopool *iopl)
{
 struct scsi_iohandler *ioh;
 void *io;

 if (!scsi_pending_start(&iopl->mtx, &iopl->running))
  return;
 do {
  while (scsi_ioh_pending(iopl)) {
   io = scsi_iopool_get(iopl);
   if (io == ((void *)0))
    break;

   ioh = scsi_ioh_deq(iopl);
   if (ioh == ((void *)0)) {
    scsi_iopool_put(iopl, io);
    break;
   }

   ioh->handler(ioh->cookie, io);
  }
 } while (!scsi_pending_finish(&iopl->mtx, &iopl->running));
}





void
scsi_move(struct scsi_io_mover *m)
{
 __mtx_enter(&m->mtx);
 while (!m->done)
  msleep(m, &m->mtx, 16, "scsiiomv", 0);
 __mtx_leave(&m->mtx);
}

void
scsi_move_done(void *cookie, void *io)
{
 struct scsi_io_mover *m = cookie;

 __mtx_enter(&m->mtx);
 m->io = io;
 m->done = 1;
 wakeup_n((m), 1);
 __mtx_leave(&m->mtx);
}





void *
scsi_io_get(struct scsi_iopool *iopl, int flags)
{
 struct scsi_io_mover m = { { ((void *)0), ((((5)) > 0 && ((5)) < 12) ? 12 : ((5))), 0 }, ((void *)0), 0 };
 struct scsi_iohandler ioh;
 void *io;


 io = scsi_iopool_get(iopl);
 if (io != ((void *)0))
  return (io);
 else if (((flags) & (0x00001)))
  return (((void *)0));


 scsi_ioh_set(&ioh, iopl, scsi_io_get_done, &m);
 scsi_ioh_add(&ioh);
 scsi_move(&m);

 return (m.io);
}

void
scsi_io_get_done(void *cookie, void *io)
{
 scsi_move_done(cookie, io);
}

void
scsi_io_put(struct scsi_iopool *iopl, void *io)
{
 scsi_iopool_put(iopl, io);
 scsi_iopool_run(iopl);
}





void
scsi_xsh_set(struct scsi_xshandler *xsh, struct scsi_link *link,
    void (*handler)(struct scsi_xfer *))
{
 scsi_ioh_set(&xsh->ioh, link->pool, scsi_xsh_ioh, xsh);

 xsh->link = link;
 xsh->handler = handler;
}

int
scsi_xsh_add(struct scsi_xshandler *xsh)
{
 struct scsi_link *link = xsh->link;
 int rv = 0;

 if (((link->state) & ((1<<1))))
  return (0);

 __mtx_enter(&link->pool->mtx);
 if (xsh->ioh.q_state == 0) {
  do { (&xsh->ioh)->q_entry.tqe_next = ((void *)0); (&xsh->ioh)->q_entry.tqe_prev = (&link->queue)->tqh_last; *(&link->queue)->tqh_last = (&xsh->ioh); (&link->queue)->tqh_last = &(&xsh->ioh)->q_entry.tqe_next; } while (0);
  xsh->ioh.q_state = 1;
  rv = 1;
 }
 __mtx_leave(&link->pool->mtx);


 scsi_xsh_runqueue(link);

 return (rv);
}

int
scsi_xsh_del(struct scsi_xshandler *xsh)
{
 struct scsi_link *link = xsh->link;
 int rv = 1;

 __mtx_enter(&link->pool->mtx);
 switch (xsh->ioh.q_state) {
 case 0:
  rv = 0;
  break;
 case 1:
  do { if (((&xsh->ioh)->q_entry.tqe_next) != ((void *)0)) (&xsh->ioh)->q_entry.tqe_next->q_entry.tqe_prev = (&xsh->ioh)->q_entry.tqe_prev; else (&link->queue)->tqh_last = (&xsh->ioh)->q_entry.tqe_prev; *(&xsh->ioh)->q_entry.tqe_prev = (&xsh->ioh)->q_entry.tqe_next; ((&xsh->ioh)->q_entry.tqe_prev) = ((void *)-1); ((&xsh->ioh)->q_entry.tqe_next) = ((void *)-1); } while (0);
  break;
 case 2:
  do { if (((&xsh->ioh)->q_entry.tqe_next) != ((void *)0)) (&xsh->ioh)->q_entry.tqe_next->q_entry.tqe_prev = (&xsh->ioh)->q_entry.tqe_prev; else (&link->pool->queue)->tqh_last = (&xsh->ioh)->q_entry.tqe_prev; *(&xsh->ioh)->q_entry.tqe_prev = (&xsh->ioh)->q_entry.tqe_next; ((&xsh->ioh)->q_entry.tqe_prev) = ((void *)-1); ((&xsh->ioh)->q_entry.tqe_next) = ((void *)-1); } while (0);
  link->pending--;
  if (((link->state) & ((1<<1))) && link->pending == 0)
   wakeup_n((&link->pending), 1);
  break;
 default:
  panic("unexpected xsh state %u", xsh->ioh.q_state);
 }
 xsh->ioh.q_state = 0;
 __mtx_leave(&link->pool->mtx);

 return (rv);
}





void
scsi_xsh_runqueue(struct scsi_link *link)
{
 struct scsi_iohandler *ioh;
 int runq;

 if (!scsi_pending_start(&link->pool->mtx, &link->running))
  return;
 do {
  runq = 0;

  __mtx_enter(&link->pool->mtx);
  while (!((link->state) & ((1<<1))) &&
      link->pending < link->openings &&
      ((ioh = ((&link->queue)->tqh_first)) != ((void *)0))) {
   link->pending++;

   do { if (((ioh)->q_entry.tqe_next) != ((void *)0)) (ioh)->q_entry.tqe_next->q_entry.tqe_prev = (ioh)->q_entry.tqe_prev; else (&link->queue)->tqh_last = (ioh)->q_entry.tqe_prev; *(ioh)->q_entry.tqe_prev = (ioh)->q_entry.tqe_next; ((ioh)->q_entry.tqe_prev) = ((void *)-1); ((ioh)->q_entry.tqe_next) = ((void *)-1); } while (0);
   do { (ioh)->q_entry.tqe_next = ((void *)0); (ioh)->q_entry.tqe_prev = (&link->pool->queue)->tqh_last; *(&link->pool->queue)->tqh_last = (ioh); (&link->pool->queue)->tqh_last = &(ioh)->q_entry.tqe_next; } while (0);
   ioh->q_state = 2;

   runq = 1;
  }
  __mtx_leave(&link->pool->mtx);

  if (runq)
   scsi_iopool_run(link->pool);
 } while (!scsi_pending_finish(&link->pool->mtx, &link->running));
}

void
scsi_xsh_ioh(void *cookie, void *io)
{
 struct scsi_xshandler *xsh = cookie;
 struct scsi_xfer *xs;

 xs = scsi_xs_io(xsh->link, io, 0x00001);
 if (xs == ((void *)0)) {






  printf("scsi_xfer pool exhausted!\n");
  scsi_xsh_add(xsh);
  return;
 }

 xsh->handler(xs);
}






struct scsi_xfer *
scsi_xs_get(struct scsi_link *link, int flags)
{
 struct scsi_xshandler xsh;
 struct scsi_io_mover m = { { ((void *)0), ((((5)) > 0 && ((5)) < 12) ? 12 : ((5))), 0 }, ((void *)0), 0 };

 struct scsi_iopool *iopl = link->pool;
 void *io;

 if (((link->state) & ((1<<1))))
  return (((void *)0));


 scsi_ioh_set(&xsh.ioh, iopl, scsi_xs_get_done, &m);
 xsh.link = link;

 if (!scsi_link_open(link)) {
  if (((flags) & (0x00001)))
   return (((void *)0));

  scsi_xsh_add(&xsh);
  scsi_move(&m);
  if (m.io == ((void *)0))
   return (((void *)0));

  io = m.io;
 } else if ((io = scsi_iopool_get(iopl)) == ((void *)0)) {
  if (((flags) & (0x00001))) {
   scsi_link_close(link);
   return (((void *)0));
  }

  scsi_ioh_add(&xsh.ioh);
  scsi_move(&m);
  if (m.io == ((void *)0))
   return (((void *)0));

  io = m.io;
 }

 return (scsi_xs_io(link, io, flags));
}

void
scsi_xs_get_done(void *cookie, void *io)
{
 scsi_move_done(cookie, io);
}

void
scsi_link_shutdown(struct scsi_link *link)
{
 struct scsi_runq sleepers = { ((void *)0), &(sleepers).tqh_first };
 struct scsi_iopool *iopl = link->pool;
 struct scsi_iohandler *ioh;
 struct scsi_xshandler *xsh;

 __mtx_enter(&iopl->mtx);
 while ((ioh = ((&link->queue)->tqh_first)) != ((void *)0)) {
  do { if (((ioh)->q_entry.tqe_next) != ((void *)0)) (ioh)->q_entry.tqe_next->q_entry.tqe_prev = (ioh)->q_entry.tqe_prev; else (&link->queue)->tqh_last = (ioh)->q_entry.tqe_prev; *(ioh)->q_entry.tqe_prev = (ioh)->q_entry.tqe_next; ((ioh)->q_entry.tqe_prev) = ((void *)-1); ((ioh)->q_entry.tqe_next) = ((void *)-1); } while (0);
  ioh->q_state = 0;

  if (ioh->handler == scsi_xs_get_done)
   do { (ioh)->q_entry.tqe_next = ((void *)0); (ioh)->q_entry.tqe_prev = (&sleepers)->tqh_last; *(&sleepers)->tqh_last = (ioh); (&sleepers)->tqh_last = &(ioh)->q_entry.tqe_next; } while (0);

  else
   panic("scsi_link_shutdown: scsi_xshandler on link");

 }

 ioh = ((&iopl->queue)->tqh_first);
 while (ioh != ((void *)0)) {
  xsh = (struct scsi_xshandler *)ioh;
  ioh = ((ioh)->q_entry.tqe_next);


  if (xsh->ioh.handler == scsi_xsh_ioh &&
      xsh->link == link)
   panic("scsi_link_shutdown: scsi_xshandler on pool");


  if (xsh->ioh.handler == scsi_xs_get_done &&
      xsh->link == link) {
   do { if (((&xsh->ioh)->q_entry.tqe_next) != ((void *)0)) (&xsh->ioh)->q_entry.tqe_next->q_entry.tqe_prev = (&xsh->ioh)->q_entry.tqe_prev; else (&iopl->queue)->tqh_last = (&xsh->ioh)->q_entry.tqe_prev; *(&xsh->ioh)->q_entry.tqe_prev = (&xsh->ioh)->q_entry.tqe_next; ((&xsh->ioh)->q_entry.tqe_prev) = ((void *)-1); ((&xsh->ioh)->q_entry.tqe_next) = ((void *)-1); } while (0);
   xsh->ioh.q_state = 0;
   link->pending--;

   do { (&xsh->ioh)->q_entry.tqe_next = ((void *)0); (&xsh->ioh)->q_entry.tqe_prev = (&sleepers)->tqh_last; *(&sleepers)->tqh_last = (&xsh->ioh); (&sleepers)->tqh_last = &(&xsh->ioh)->q_entry.tqe_next; } while (0);
  }
 }

 while (link->pending > 0)
  msleep(&link->pending, &iopl->mtx, 16, "pendxs", 0);
 __mtx_leave(&iopl->mtx);

 while ((ioh = ((&sleepers)->tqh_first)) != ((void *)0)) {
  do { if (((ioh)->q_entry.tqe_next) != ((void *)0)) (ioh)->q_entry.tqe_next->q_entry.tqe_prev = (ioh)->q_entry.tqe_prev; else (&sleepers)->tqh_last = (ioh)->q_entry.tqe_prev; *(ioh)->q_entry.tqe_prev = (ioh)->q_entry.tqe_next; ((ioh)->q_entry.tqe_prev) = ((void *)-1); ((ioh)->q_entry.tqe_next) = ((void *)-1); } while (0);
  ioh->handler(ioh->cookie, ((void *)0));
 }
}

int
scsi_link_open(struct scsi_link *link)
{
 int open = 0;

 __mtx_enter(&link->pool->mtx);
 if (link->pending < link->openings) {
  link->pending++;
  open = 1;
 }
 __mtx_leave(&link->pool->mtx);

 return (open);
}

void
scsi_link_close(struct scsi_link *link)
{
 __mtx_enter(&link->pool->mtx);
 link->pending--;
 if (((link->state) & ((1<<1))) && link->pending == 0)
  wakeup_n((&link->pending), 1);
 __mtx_leave(&link->pool->mtx);

 scsi_xsh_runqueue(link);
}

struct scsi_xfer *
scsi_xs_io(struct scsi_link *link, void *io, int flags)
{
 struct scsi_xfer *xs;

 xs = pool_get(&scsi_xfer_pool, 0x0008 |
     (((flags) & (0x00001)) ? 0x0002 : 0x0001));
 if (xs == ((void *)0)) {
  scsi_io_put(link->pool, io);
  scsi_link_close(link);
 } else {
  xs->flags = flags;
  xs->sc_link = link;
  xs->retries = 4;
  xs->timeout = 10000;
  xs->cmd = &xs->cmdstore;
  xs->io = io;
 }

 return (xs);
}

void
scsi_xs_put(struct scsi_xfer *xs)
{
 struct scsi_link *link = xs->sc_link;
 void *io = xs->io;

 pool_put(&scsi_xfer_pool, xs);

 scsi_io_put(link->pool, io);
 scsi_link_close(link);
}




int
scsi_test_unit_ready(struct scsi_link *link, int retries, int flags)
{
 struct scsi_test_unit_ready *cmd;
 struct scsi_xfer *xs;
 int error;

 xs = scsi_xs_get(link, flags);
 if (xs == ((void *)0))
  return (12);
 xs->cmdlen = sizeof(*cmd);
 xs->retries = retries;
 xs->timeout = 10000;

 cmd = (struct scsi_test_unit_ready *)xs->cmd;
 cmd->opcode = 0x00;

 error = scsi_xs_sync(xs);
 scsi_xs_put(xs);

 return (error);
}

void
scsi_init_inquiry(struct scsi_xfer *xs, u_int8_t flags, u_int8_t pagecode,
    void *data, size_t len)
{
 struct scsi_inquiry *cmd;

 cmd = (struct scsi_inquiry *)xs->cmd;
 cmd->opcode = 0x12;
 cmd->flags = flags;
 cmd->pagecode = pagecode;
 _lto2b(len, cmd->length);

 xs->cmdlen = sizeof(*cmd);

 xs->flags |= 0x00800;
 xs->data = data;
 xs->datalen = len;
}





int
scsi_inquire(struct scsi_link *link, struct scsi_inquiry_data *inqbuf,
    int flags)
{
 struct scsi_xfer *xs;
 int error;

 xs = scsi_xs_get(link, flags);
 if (xs == ((void *)0))
  return (16);





 scsi_init_inquiry(xs, 0, 0, inqbuf, 5 + 31);

 __builtin_bzero((inqbuf), (sizeof(*inqbuf)));
 __builtin_memset((&inqbuf->vendor), (' '), (sizeof inqbuf->vendor));
 __builtin_memset((&inqbuf->product), (' '), (sizeof inqbuf->product));
 __builtin_memset((&inqbuf->revision), (' '), (sizeof inqbuf->revision));
 __builtin_memset((&inqbuf->extra), (' '), (sizeof inqbuf->extra));

 error = scsi_xs_sync(xs);

 scsi_xs_put(xs);

 return (error);
}




int
scsi_inquire_vpd(struct scsi_link *link, void *buf, u_int buflen,
    u_int8_t page, int flags)
{
 struct scsi_xfer *xs;
 int error;

 if (link->flags & 0x0800)
  return (-2);

 xs = scsi_xs_get(link, flags | 0x00800 | 0x00020);
 if (xs == ((void *)0))
  return (12);

 xs->retries = 2;
 xs->timeout = 10000;

 scsi_init_inquiry(xs, 0x01, page, buf, buflen);

 error = scsi_xs_sync(xs);

 scsi_xs_put(xs);

 return (error);
}




int
scsi_prevent(struct scsi_link *link, int type, int flags)
{
 struct scsi_prevent *cmd;
 struct scsi_xfer *xs;
 int error;

 if (link->quirks & 0x2000)
  return (0);

 xs = scsi_xs_get(link, flags);
 if (xs == ((void *)0))
  return (12);
 xs->cmdlen = sizeof(*cmd);
 xs->retries = 2;
 xs->timeout = 5000;

 cmd = (struct scsi_prevent *)xs->cmd;
 cmd->opcode = 0x1e;
 cmd->how = type;

 error = scsi_xs_sync(xs);
 scsi_xs_put(xs);

 return (error);
}




int
scsi_start(struct scsi_link *link, int type, int flags)
{
 struct scsi_start_stop *cmd;
 struct scsi_xfer *xs;
 int error;

 xs = scsi_xs_get(link, flags);
 if (xs == ((void *)0))
  return (12);
 xs->cmdlen = sizeof(*cmd);
 xs->retries = 2;
 xs->timeout = (type == 0x01) ? 30000 : 10000;

 cmd = (struct scsi_start_stop *)xs->cmd;
 cmd->opcode = 0x1b;
 cmd->how = type;

 error = scsi_xs_sync(xs);
 scsi_xs_put(xs);

 return (error);
}

int
scsi_mode_sense(struct scsi_link *link, int byte2, int page,
    struct scsi_mode_header *data, size_t len, int flags, int timeout)
{
 struct scsi_mode_sense *cmd;
 struct scsi_xfer *xs;
 int error;

 xs = scsi_xs_get(link, flags | 0x00800);
 if (xs == ((void *)0))
  return (12);
 xs->cmdlen = sizeof(*cmd);
 xs->data = (void *)data;
 xs->datalen = len;
 xs->timeout = timeout;






 __builtin_bzero((data), (len));

 cmd = (struct scsi_mode_sense *)xs->cmd;
 cmd->opcode = 0x1a;
 cmd->byte2 = byte2;
 cmd->page = page;

 if (len > 0xff)
  len = 0xff;
 cmd->length = len;

 error = scsi_xs_sync(xs);
 scsi_xs_put(xs);

 ;


 return (error);
}

int
scsi_mode_sense_big(struct scsi_link *link, int byte2, int page,
    struct scsi_mode_header_big *data, size_t len, int flags, int timeout)
{
 struct scsi_mode_sense_big *cmd;
 struct scsi_xfer *xs;
 int error;

 xs = scsi_xs_get(link, flags | 0x00800);
 if (xs == ((void *)0))
  return (12);
 xs->cmdlen = sizeof(*cmd);
 xs->data = (void *)data;
 xs->datalen = len;
 xs->timeout = timeout;






 __builtin_bzero((data), (len));

 cmd = (struct scsi_mode_sense_big *)xs->cmd;
 cmd->opcode = 0x5a;
 cmd->byte2 = byte2;
 cmd->page = page;

 if (len > 0xffff)
  len = 0xffff;
 _lto2b(len, cmd->length);

 error = scsi_xs_sync(xs);
 scsi_xs_put(xs);

 ;


 return (error);
}

void *
scsi_mode_sense_page(struct scsi_mode_header *hdr, const int page_len)
{
 int total_length, header_length;

 total_length = hdr->data_length + sizeof(hdr->data_length);
 header_length = sizeof(*hdr) + hdr->blk_desc_len;

 if ((total_length - header_length) < page_len)
  return (((void *)0));

 return ((u_char *)hdr + header_length);
}

void *
scsi_mode_sense_big_page(struct scsi_mode_header_big *hdr, const int page_len)
{
 int total_length, header_length;

 total_length = _2btol(hdr->data_length) + sizeof(hdr->data_length);
 header_length = sizeof(*hdr) + _2btol(hdr->blk_desc_len);

 if ((total_length - header_length) < page_len)
  return (((void *)0));

 return ((u_char *)hdr + header_length);
}

int
scsi_do_mode_sense(struct scsi_link *link, int page,
    union scsi_mode_sense_buf *buf, void **page_data, u_int32_t *density,
    u_int64_t *block_count, u_int32_t *block_size, int page_len, int flags,
    int *big)
{
 struct scsi_direct_blk_desc *direct;
 struct scsi_blk_desc *general;
 int error, blk_desc_len, offset;

 *page_data = ((void *)0);

 if (density != ((void *)0))
  *density = 0;
 if (block_count != ((void *)0))
  *block_count = 0;
 if (block_size != ((void *)0))
  *block_size = 0;
 if (big != ((void *)0))
  *big = 0;

 if ((link->flags & 0x0200) == 0 ||
     (link->inqdata.device & 0x1F) == 1) {
# 1087 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_base.c"
  error = scsi_mode_sense(link, 0, page, &buf->hdr,
      sizeof(*buf), flags, 20000);
  if (error == 0) {
   *page_data = scsi_mode_sense_page(&buf->hdr, page_len);
   if (*page_data == ((void *)0)) {
# 1100 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_base.c"
    return (0);
   }
   offset = sizeof(struct scsi_mode_header);
   blk_desc_len = buf->hdr.blk_desc_len;
   goto blk_desc;
  }
 }






 if ((link->flags & (0x0200 | 0x0800)) == 0 &&
     (version_to_spc[(link->inqdata.version) & 0x07]) < 2) {





  return (0);
 }
 error = scsi_mode_sense_big(link, 0, page, &buf->hdr_big,
     sizeof(*buf), flags, 20000);
 if (error != 0)
  return (error);
 if (_2btol(buf->hdr_big.data_length) < 6)
  return (5);

 if (big != ((void *)0))
  *big = 1;
 offset = sizeof(struct scsi_mode_header_big);
 *page_data = scsi_mode_sense_big_page(&buf->hdr_big, page_len);
 blk_desc_len = _2btol(buf->hdr_big.blk_desc_len);

blk_desc:

 if (blk_desc_len == 0 || (blk_desc_len % 8 != 0))
  return (0);

 switch (link->inqdata.device & 0x1F) {
 case 1:



  general = (struct scsi_blk_desc *)&buf->buf[offset];
  if (density != ((void *)0))
   *density = general->density;
  if (block_size != ((void *)0))
   *block_size = _3btol(general->blklen);
  if (block_count != ((void *)0))
   *block_count = (u_int64_t)_3btol(general->nblocks);
  break;

 default:
  direct = (struct scsi_direct_blk_desc *)&buf->buf[offset];
  if (density != ((void *)0))
   *density = direct->density;
  if (block_size != ((void *)0))
   *block_size = _3btol(direct->blklen);
  if (block_count != ((void *)0))
   *block_count = (u_int64_t)_4btol(direct->nblocks);
  break;
 }

 return (0);
}

int
scsi_mode_select(struct scsi_link *link, int byte2,
    struct scsi_mode_header *data, int flags, int timeout)
{
 struct scsi_mode_select *cmd;
 struct scsi_xfer *xs;
 u_int32_t len;
 int error;

 len = data->data_length + 1;

 xs = scsi_xs_get(link, flags | 0x01000);
 if (xs == ((void *)0))
  return (12);
 xs->cmdlen = sizeof(*cmd);
 xs->data = (void *)data;
 xs->datalen = len;
 xs->timeout = timeout;

 cmd = (struct scsi_mode_select *)xs->cmd;
 cmd->opcode = 0x15;
 cmd->byte2 = byte2;
 cmd->length = len;


 data->data_length = 0;

 error = scsi_xs_sync(xs);
 scsi_xs_put(xs);

 ;

 return (error);
}

int
scsi_mode_select_big(struct scsi_link *link, int byte2,
    struct scsi_mode_header_big *data, int flags, int timeout)
{
 struct scsi_mode_select_big *cmd;
 struct scsi_xfer *xs;
 u_int32_t len;
 int error;

 len = _2btol(data->data_length) + 2;

 xs = scsi_xs_get(link, flags | 0x01000);
 if (xs == ((void *)0))
  return (12);
 xs->cmdlen = sizeof(*cmd);
 xs->data = (void *)data;
 xs->datalen = len;
 xs->timeout = timeout;

 cmd = (struct scsi_mode_select_big *)xs->cmd;
 cmd->opcode = 0x55;
 cmd->byte2 = byte2;
 _lto2b(len, cmd->length);


 _lto2b(0, data->data_length);

 error = scsi_xs_sync(xs);
 scsi_xs_put(xs);

 ;


 return (error);
}

int
scsi_report_luns(struct scsi_link *link, int selectreport,
    struct scsi_report_luns_data *data, u_int32_t datalen, int flags,
    int timeout)
{
 struct scsi_report_luns *cmd;
 struct scsi_xfer *xs;
 int error;

 xs = scsi_xs_get(link, flags | 0x00800);
 if (xs == ((void *)0))
  return (12);
 xs->cmdlen = sizeof(*cmd);
 xs->data = (void *)data;
 xs->datalen = datalen;
 xs->timeout = timeout;

 __builtin_bzero((data), (datalen));

 cmd = (struct scsi_report_luns *)xs->cmd;
 cmd->opcode = 0xa0;
 cmd->selectreport = selectreport;
 _lto4b(datalen, cmd->length);

 error = scsi_xs_sync(xs);
 scsi_xs_put(xs);

 ;

 return (error);
}

void
scsi_xs_exec(struct scsi_xfer *xs)
{
 xs->error = 0;
 xs->resid = xs->datalen;
 xs->status = 0;
 ((xs->flags) &= ~(0x00008));
# 1288 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_base.c"
 _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_base.c", 1288);
 xs->sc_link->adapter->scsi_cmd(xs);
 _kernel_unlock();
}




void
scsi_done(struct scsi_xfer *xs)
{







 ((xs->flags) |= (0x00008));
 _kernel_lock("/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_base.c", 1307);
 xs->done(xs);
 _kernel_unlock();
}

int
scsi_xs_sync(struct scsi_xfer *xs)
{
 struct mutex cookie = { ((void *)0), ((((5)) > 0 && ((5)) < 12) ? 12 : ((5))), 0 };
 int error;


 if (xs->cookie != ((void *)0))
  panic("xs->cookie != NULL in scsi_xs_sync");
 if (xs->done != ((void *)0))
  panic("xs->done != NULL in scsi_xs_sync");






 if (((xs->flags) & (0x00001)))
  ((xs->flags) |= (0x00002));

 xs->done = scsi_xs_sync_done;

 do {
  xs->cookie = &cookie;

  scsi_xs_exec(xs);

  __mtx_enter(&cookie);
  while (xs->cookie != ((void *)0))
   msleep(xs, &cookie, 16, "syncxs", 0);
  __mtx_leave(&cookie);

  error = scsi_xs_error(xs);
 } while (error == -1);

 return (error);
}

void
scsi_xs_sync_done(struct scsi_xfer *xs)
{
 struct mutex *cookie = xs->cookie;

 if (cookie == ((void *)0))
  panic("scsi_done called twice on xs(%p)", xs);

 __mtx_enter(cookie);
 xs->cookie = ((void *)0);
 if (!((xs->flags) & (0x00001)))
  wakeup_n((xs), 1);
 __mtx_leave(cookie);
}

int
scsi_xs_error(struct scsi_xfer *xs)
{
 int error = 5;

 ;


 if (((xs->sc_link->state) & ((1<<1))))
  return (6);

 switch (xs->error) {
 case 0:
  error = 0;
  break;

 case 1:
 case 6:



  error = xs->sc_link->interpret_sense(xs);
  ;

  break;

 case 5:
  error = scsi_delay(xs, 1);
  break;

 case 4:
 case 8:
  error = -1;
  break;

 case 2:
 case 3:
  break;

 default:
  sc_print_addr(xs->sc_link);
  printf("unknown error category (0x%x) from scsi driver\n",
      xs->error);
  break;
 }

 if (error == -1 && xs->retries-- < 1)
  return (5);
 else
  return (error);
}

int
scsi_delay(struct scsi_xfer *xs, int seconds)
{
 switch (xs->flags & (0x00002 | 0x00001)) {
 case 0x00002:
  delay(1000000 * seconds);
  return (-1);
 case 0x00001:

  return (-1);
 case (0x00002 | 0x00001):

  return (5);
 }

 while (seconds-- > 0) {
  if (tsleep(&lbolt, 16|0x100, "scbusy", 0)) {

   return (5);
  }
 }

 return (-1);
}
# 1475 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_base.c"
int
scsi_interpret_sense(struct scsi_xfer *xs)
{
 struct scsi_sense_data *sense = &xs->sense;
 struct scsi_link *link = xs->sc_link;
 u_int8_t serr, skey;
 int error;


 serr = sense->error_code & 0x7F;
 if (serr != 0x70 && serr != 0x71)
  skey = 0xff;
 else
  skey = sense->flags & 0x0F;




 error = 0;
 switch (skey) {
 case 0x00:
 case 0x01:
  if (xs->resid == xs->datalen)
   xs->resid = 0;
  break;
 case 0x08:
 case 0x0C:
  break;
 case 0x02:
  if ((xs->flags & 0x00040) != 0)
   return (0);
  error = 5;
  if (xs->retries) {
   switch (((sense->add_sense_code << 8) | sense->add_sense_code_qual)) {
   case 0x0401:
   case 0x0404:
   case 0x0405:
   case 0x0406:
   case 0x0407:
   case 0x0408:
   case 0x0409:
   case 0x0402:
    ;


    return (scsi_delay(xs, 1));
   case 0x3A00:
   case 0x3A01:
   case 0x3A02:
   case 0x3A03:
   case 0x3A04:
    link->flags &= ~0x0002;
    error = 85;
    break;
   default:
    break;
   }
  }
  break;
 case 0x03:
  switch (((sense->add_sense_code << 8) | sense->add_sense_code_qual)) {
  case 0x3A00:
  case 0x3A01:
  case 0x3A02:
  case 0x3A03:
  case 0x3A04:
   link->flags &= ~0x0002;
   error = 85;
   break;
  case 0x3000:
  case 0x3001:
  case 0x3002:
  case 0x3004:
  case 0x3005:
  case 0x3006:
  case 0x3008:
   error = 86;
   break;
  default:
   error = 5;
   break;
  }
  break;
 case 0x05:
  if ((xs->flags & 0x00100) != 0)
   return (0);
  if (((sense->add_sense_code << 8) | sense->add_sense_code_qual) == 0x5302)
   return(16);
  error = 22;
  break;
 case 0x06:
  switch (((sense->add_sense_code << 8) | sense->add_sense_code_qual)) {
  case 0x2900:
  case 0x2901:
  case 0x2902:
  case 0x2903:
  case 0x2904:
  case 0x2905:
  case 0x2906:
  case 0x2907:
   return (scsi_delay(xs, 1));
  default:
   break;
  }
  if ((link->flags & 0x0001) != 0)
   link->flags &= ~0x0002;
  if ((xs->flags & 0x00080) != 0 ||

      (link->flags & 0x0001) == 0) {
   return (scsi_delay(xs, 1));
  }
  error = 5;
  break;
 case 0x07:
  error = 30;
  break;
 case 0x0B:
  error = -1;
  break;
 case 0x0D:
  error = 28;
  break;
 case 0x04:
  if (((sense->add_sense_code << 8) | sense->add_sense_code_qual) == 0x5200)
   return(86);
  error = 5;
  break;
 default:
  error = 5;
  break;
 }



 if (skey && (xs->flags & 0x00020) == 0)
  scsi_print_sense(xs);


 return (error);
}
# 1624 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_base.c"
void
sc_print_addr(struct scsi_link *link)
{
 struct device *adapter_device = link->bus->sc_dev.dv_parent;

 printf("%s(%s:%d:%d): ",
     link->device_softc ?
     ((struct device *)link->device_softc)->dv_xname : "probe",
     adapter_device->dv_xname,
     link->target, link->lun);
}

static const char *sense_keys[16] = {
 "No Additional Sense",
 "Soft Error",
 "Not Ready",
 "Media Error",
 "Hardware Error",
 "Illegal Request",
 "Unit Attention",
 "Write Protected",
 "Blank Check",
 "Vendor Unique",
 "Copy Aborted",
 "Aborted Command",
 "Equal Error",
 "Volume Overflow",
 "Miscompare Error",
 "Reserved"
};
# 1662 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_base.c"
static const struct {
 u_int8_t asc, ascq;
 char *description;
} adesc[] = {

 { 0x00, 0x00, "No Additional Sense Information" },
 { 0x00, 0x01, "Filemark Detected" },
 { 0x00, 0x02, "End-Of-Partition/Medium Detected" },
 { 0x00, 0x03, "Setmark Detected" },
 { 0x00, 0x04, "Beginning-Of-Partition/Medium Detected" },
 { 0x00, 0x05, "End-Of-Data Detected" },
 { 0x00, 0x06, "I/O Process Terminated" },
 { 0x00, 0x11, "Audio Play Operation In Progress" },
 { 0x00, 0x12, "Audio Play Operation Paused" },
 { 0x00, 0x13, "Audio Play Operation Successfully Completed" },
 { 0x00, 0x14, "Audio Play Operation Stopped Due to Error" },
 { 0x00, 0x15, "No Current Audio Status To Return" },
 { 0x00, 0x16, "Operation In Progress" },
 { 0x00, 0x17, "Cleaning Requested" },
 { 0x00, 0x18, "Erase Operation In Progress" },
 { 0x00, 0x19, "Locate Operation In Progress" },
 { 0x00, 0x1A, "Rewind Operation In Progress" },
 { 0x00, 0x1B, "Set Capacity Operation In Progress" },
 { 0x00, 0x1C, "Verify Operation In Progress" },
 { 0x01, 0x00, "No Index/Sector Signal" },
 { 0x02, 0x00, "No Seek Complete" },
 { 0x03, 0x00, "Peripheral Device Write Fault" },
 { 0x03, 0x01, "No Write Current" },
 { 0x03, 0x02, "Excessive Write Errors" },
 { 0x04, 0x00, "Logical Unit Not Ready, Cause Not Reportable" },
 { 0x04, 0x01, "Logical Unit Is in Process Of Becoming Ready" },
 { 0x04, 0x02, "Logical Unit Not Ready, Initialization Command Required" },
 { 0x04, 0x03, "Logical Unit Not Ready, Manual Intervention Required" },
 { 0x04, 0x04, "Logical Unit Not Ready, Format In Progress" },
 { 0x04, 0x05, "Logical Unit Not Ready, Rebuild In Progress" },
 { 0x04, 0x06, "Logical Unit Not Ready, Recalculation In Progress" },
 { 0x04, 0x07, "Logical Unit Not Ready, Operation In Progress" },
 { 0x04, 0x08, "Logical Unit Not Ready, Long Write In Progress" },
 { 0x04, 0x09, "Logical Unit Not Ready, Self-Test In Progress" },
 { 0x04, 0x0A, "Logical Unit Not Accessible, Asymmetric Access State Transition" },
 { 0x04, 0x0B, "Logical Unit Not Accessible, Target Port In Standby State" },
 { 0x04, 0x0C, "Logical Unit Not Accessible, Target Port In Unavailable State" },
 { 0x04, 0x0D, "Logical Unit Not Ready, Structure Check Required" },
 { 0x04, 0x10, "Logical Unit Not Ready, Auxiliary Memory Not Accessible" },
 { 0x04, 0x11, "Logical Unit Not Ready, Notify (Enable Spinup) Required" },
 { 0x04, 0x12, "Logical Unit Not Ready, Offline" },
 { 0x04, 0x13, "Logical Unit Not Ready, SA Creation In Progress" },
 { 0x04, 0x14, "Logical Unit Not Ready, Space Allocation In Progress" },
 { 0x04, 0x15, "Logical Unit Not Ready, Robotics Disabled" },
 { 0x04, 0x16, "Logical Unit Not Ready, Configuration Required" },
 { 0x04, 0x17, "Logical Unit Not Ready, Calibration Required" },
 { 0x04, 0x18, "Logical Unit Not Ready, A Door Is Open" },
 { 0x04, 0x19, "Logical Unit Not Ready, Operating In Sequential Mode" },
 { 0x04, 0x1A, "Logical Unit Not Ready, Start Stop Unit Command In Progress" },
 { 0x05, 0x00, "Logical Unit Does Not Respond To Selection" },
 { 0x06, 0x00, "No Reference Position Found" },
 { 0x07, 0x00, "Multiple Peripheral Devices Selected" },
 { 0x08, 0x00, "Logical Unit Communication Failure" },
 { 0x08, 0x01, "Logical Unit Communication Timeout" },
 { 0x08, 0x02, "Logical Unit Communication Parity Error" },
 { 0x08, 0x03, "Logical Unit Communication CRC Error (ULTRA-DMA/32)" },
 { 0x08, 0x04, "Unreachable Copy Target" },
 { 0x09, 0x00, "Track Following Error" },
 { 0x09, 0x01, "Tracking Servo Failure" },
 { 0x09, 0x02, "Focus Servo Failure" },
 { 0x09, 0x03, "Spindle Servo Failure" },
 { 0x09, 0x04, "Head Select Fault" },
 { 0x0A, 0x00, "Error Log Overflow" },
 { 0x0B, 0x00, "Warning" },
 { 0x0B, 0x01, "Warning - Specified Temperature Exceeded" },
 { 0x0B, 0x02, "Warning - Enclosure Degraded" },
 { 0x0B, 0x03, "Warning - Background Self-Test Failed" },
 { 0x0B, 0x04, "Warning - Background Pre-Scan Detected Medium Error" },
 { 0x0B, 0x05, "Warning - Background Medium Scan Detected Medium Error" },
 { 0x0B, 0x06, "Warning - Non-Volatile Cache Now Volatile" },
 { 0x0B, 0x07, "Warning - Degraded Power To Non-Volatile Cache" },
 { 0x0B, 0x08, "Warning - Power Loss Expected" },
 { 0x0C, 0x00, "Write Error" },
 { 0x0C, 0x01, "Write Error Recovered with Auto Reallocation" },
 { 0x0C, 0x02, "Write Error - Auto Reallocate Failed" },
 { 0x0C, 0x03, "Write Error - Recommend Reassignment" },
 { 0x0C, 0x04, "Compression Check Miscompare Error" },
 { 0x0C, 0x05, "Data Expansion Occurred During Compression" },
 { 0x0C, 0x06, "Block Not Compressible" },
 { 0x0C, 0x07, "Write Error - Recovery Needed" },
 { 0x0C, 0x08, "Write Error - Recovery Failed" },
 { 0x0C, 0x09, "Write Error - Loss Of Streaming" },
 { 0x0C, 0x0A, "Write Error - Padding Blocks Added" },
 { 0x0C, 0x0B, "Auxiliary Memory Write Error" },
 { 0x0C, 0x0C, "Write Error - Unexpected Unsolicited Data" },
 { 0x0C, 0x0D, "Write Error - Not Enough Unsolicited Data" },
 { 0x0C, 0x0F, "Defects In Error Window" },
 { 0x0D, 0x00, "Error Detected By Third Party Temporary Initiator" },
 { 0x0D, 0x01, "Third Party Device Failure" },
 { 0x0D, 0x02, "Copy Target Device Not Reachable" },
 { 0x0D, 0x03, "Incorrect Copy Target Device Type" },
 { 0x0D, 0x04, "Copy Target Device Data Underrun" },
 { 0x0D, 0x05, "Copy Target Device Data Overrun" },
 { 0x0E, 0x00, "Invalid Information Unit" },
 { 0x0E, 0x01, "Information Unit Too Short" },
 { 0x0E, 0x02, "Information Unit Too Long" },
 { 0x10, 0x00, "ID CRC Or ECC Error" },
 { 0x10, 0x01, "Logical Block Guard Check Failed" },
 { 0x10, 0x02, "Logical Block Application Tag Check Failed" },
 { 0x10, 0x03, "Logical Block Reference Tag Check Failed" },
 { 0x10, 0x04, "Logical Block Protection Error On Recover Buffered Data" },
 { 0x10, 0x05, "Logical Block Protection Method Error" },
 { 0x11, 0x00, "Unrecovered Read Error" },
 { 0x11, 0x01, "Read Retries Exhausted" },
 { 0x11, 0x02, "Error Too Long To Correct" },
 { 0x11, 0x03, "Multiple Read Errors" },
 { 0x11, 0x04, "Unrecovered Read Error - Auto Reallocate Failed" },
 { 0x11, 0x05, "L-EC Uncorrectable Error" },
 { 0x11, 0x06, "CIRC Unrecovered Error" },
 { 0x11, 0x07, "Data Resynchronization Error" },
 { 0x11, 0x08, "Incomplete Block Read" },
 { 0x11, 0x09, "No Gap Found" },
 { 0x11, 0x0A, "Miscorrected Error" },
 { 0x11, 0x0B, "Uncorrected Read Error - Recommend Reassignment" },
 { 0x11, 0x0C, "Uncorrected Read Error - Recommend Rewrite The Data" },
 { 0x11, 0x0D, "De-Compression CRC Error" },
 { 0x11, 0x0E, "Cannot Decompress Using Declared Algorithm" },
 { 0x11, 0x0F, "Error Reading UPC/EAN Number" },
 { 0x11, 0x10, "Error Reading ISRC Number" },
 { 0x11, 0x11, "Read Error - Loss Of Streaming" },
 { 0x11, 0x12, "Auxiliary Memory Read Error" },
 { 0x11, 0x13, "Read Error - Failed Retransmission Request" },
 { 0x11, 0x14, "Read Error - LBA Marked Bad By Application Client" },
 { 0x12, 0x00, "Address Mark Not Found for ID Field" },
 { 0x13, 0x00, "Address Mark Not Found for Data Field" },
 { 0x14, 0x00, "Recorded Entity Not Found" },
 { 0x14, 0x01, "Record Not Found" },
 { 0x14, 0x02, "Filemark or Setmark Not Found" },
 { 0x14, 0x03, "End-Of-Data Not Found" },
 { 0x14, 0x04, "Block Sequence Error" },
 { 0x14, 0x05, "Record Not Found - Recommend Reassignment" },
 { 0x14, 0x06, "Record Not Found - Data Auto-Reallocated" },
 { 0x14, 0x07, "Locate Operation Failure" },
 { 0x15, 0x00, "Random Positioning Error" },
 { 0x15, 0x01, "Mechanical Positioning Error" },
 { 0x15, 0x02, "Positioning Error Detected By Read of Medium" },
 { 0x16, 0x00, "Data Synchronization Mark Error" },
 { 0x16, 0x01, "Data Sync Error - Data Rewritten" },
 { 0x16, 0x02, "Data Sync Error - Recommend Rewrite" },
 { 0x16, 0x03, "Data Sync Error - Data Auto-Reallocated" },
 { 0x16, 0x04, "Data Sync Error - Recommend Reassignment" },
 { 0x17, 0x00, "Recovered Data With No Error Correction Applied" },
 { 0x17, 0x01, "Recovered Data With Retries" },
 { 0x17, 0x02, "Recovered Data With Positive Head Offset" },
 { 0x17, 0x03, "Recovered Data With Negative Head Offset" },
 { 0x17, 0x04, "Recovered Data With Retries and/or CIRC Applied" },
 { 0x17, 0x05, "Recovered Data Using Previous Sector ID" },
 { 0x17, 0x06, "Recovered Data Without ECC - Data Auto-Reallocated" },
 { 0x17, 0x07, "Recovered Data Without ECC - Recommend Reassignment" },
 { 0x17, 0x08, "Recovered Data Without ECC - Recommend Rewrite" },
 { 0x17, 0x09, "Recovered Data Without ECC - Data Rewritten" },
 { 0x18, 0x00, "Recovered Data With Error Correction Applied" },
 { 0x18, 0x01, "Recovered Data With Error Correction & Retries Applied" },
 { 0x18, 0x02, "Recovered Data - Data Auto-Reallocated" },
 { 0x18, 0x03, "Recovered Data With CIRC" },
 { 0x18, 0x04, "Recovered Data With L-EC" },
 { 0x18, 0x05, "Recovered Data - Recommend Reassignment" },
 { 0x18, 0x06, "Recovered Data - Recommend Rewrite" },
 { 0x18, 0x07, "Recovered Data With ECC - Data Rewritten" },
 { 0x18, 0x08, "Recovered Data With Linking" },
 { 0x19, 0x00, "Defect List Error" },
 { 0x19, 0x01, "Defect List Not Available" },
 { 0x19, 0x02, "Defect List Error in Primary List" },
 { 0x19, 0x03, "Defect List Error in Grown List" },
 { 0x1A, 0x00, "Parameter List Length Error" },
 { 0x1B, 0x00, "Synchronous Data Transfer Error" },
 { 0x1C, 0x00, "Defect List Not Found" },
 { 0x1C, 0x01, "Primary Defect List Not Found" },
 { 0x1C, 0x02, "Grown Defect List Not Found" },
 { 0x1D, 0x00, "Miscompare During Verify Operation" },
 { 0x1D, 0x01, "Miscompare Verify Of Unmapped Lba" },
 { 0x1E, 0x00, "Recovered ID with ECC" },
 { 0x1F, 0x00, "Partial Defect List Transfer" },
 { 0x20, 0x00, "Invalid Command Operation Code" },
 { 0x20, 0x01, "Access Denied - Initiator Pending-Enrolled" },
 { 0x20, 0x02, "Access Denied - No Access rights" },
 { 0x20, 0x03, "Access Denied - Invalid Mgmt ID Key" },
 { 0x20, 0x04, "Illegal Command While In Write Capable State" },
 { 0x20, 0x05, "Obsolete" },
 { 0x20, 0x06, "Illegal Command While In Explicit Address Mode" },
 { 0x20, 0x07, "Illegal Command While In Implicit Address Mode" },
 { 0x20, 0x08, "Access Denied - Enrollment Conflict" },
 { 0x20, 0x09, "Access Denied - Invalid LU Identifier" },
 { 0x20, 0x0A, "Access Denied - Invalid Proxy Token" },
 { 0x20, 0x0B, "Access Denied - ACL LUN Conflict" },
 { 0x20, 0x0C, "Illegal Command When Not In Append-Only Mode" },
 { 0x21, 0x00, "Logical Block Address Out of Range" },
 { 0x21, 0x01, "Invalid Element Address" },
 { 0x21, 0x02, "Invalid Address For Write" },
 { 0x21, 0x03, "Invalid Write Crossing Layer Jump" },
 { 0x22, 0x00, "Illegal Function (Should 20 00, 24 00, or 26 00)" },
 { 0x24, 0x00, "Illegal Field in CDB" },
 { 0x24, 0x01, "CDB Decryption Error" },
 { 0x24, 0x02, "Obsolete" },
 { 0x24, 0x03, "Obsolete" },
 { 0x24, 0x04, "Security Audit Value Frozen" },
 { 0x24, 0x05, "Security Working Key Frozen" },
 { 0x24, 0x06, "Nonce Not Unique" },
 { 0x24, 0x07, "Nonce Timestamp Out Of Range" },
 { 0x24, 0x08, "Invalid XCDB" },
 { 0x25, 0x00, "Logical Unit Not Supported" },
 { 0x26, 0x00, "Invalid Field In Parameter List" },
 { 0x26, 0x01, "Parameter Not Supported" },
 { 0x26, 0x02, "Parameter Value Invalid" },
 { 0x26, 0x03, "Threshold Parameters Not Supported" },
 { 0x26, 0x04, "Invalid Release Of Persistent Reservation" },
 { 0x26, 0x05, "Data Decryption Error" },
 { 0x26, 0x06, "Too Many Target Descriptors" },
 { 0x26, 0x07, "Unsupported Target Descriptor Type Code" },
 { 0x26, 0x08, "Too Many Segment Descriptors" },
 { 0x26, 0x09, "Unsupported Segment Descriptor Type Code" },
 { 0x26, 0x0A, "Unexpected Inexact Segment" },
 { 0x26, 0x0B, "Inline Data Length Exceeded" },
 { 0x26, 0x0C, "Invalid Operation For Copy Source Or Destination" },
 { 0x26, 0x0D, "Copy Segment Granularity Violation" },
 { 0x26, 0x0E, "Invalid Parameter While Port Is Enabled" },
 { 0x26, 0x0F, "Invalid Data-Out Buffer Integrity Check Value" },
 { 0x26, 0x10, "Data Decryption Key Fail Limit Reached" },
 { 0x26, 0x11, "Incomplete Key-Associated Data Set" },
 { 0x26, 0x12, "Vendor Specific Key Reference Not Found" },
 { 0x27, 0x00, "Write Protected" },
 { 0x27, 0x01, "Hardware Write Protected" },
 { 0x27, 0x02, "Logical Unit Software Write Protected" },
 { 0x27, 0x03, "Associated Write Protect" },
 { 0x27, 0x04, "Persistent Write Protect" },
 { 0x27, 0x05, "Permanent Write Protect" },
 { 0x27, 0x06, "Conditional Write Protect" },
 { 0x27, 0x07, "Space Allocation Failed Write Protect" },
 { 0x28, 0x00, "Not Ready To Ready Transition (Medium May Have Changed)" },
 { 0x28, 0x01, "Import Or Export Element Accessed" },
 { 0x28, 0x02, "Format-Layer May Have Changed" },
 { 0x28, 0x03, "Import/Export Element Accessed, Medium Changed" },
 { 0x29, 0x00, "Power On, Reset, or Bus Device Reset Occurred" },
 { 0x29, 0x01, "Power On Occurred" },
 { 0x29, 0x02, "SCSI Bus Reset Occurred" },
 { 0x29, 0x03, "Bus Device Reset Function Occurred" },
 { 0x29, 0x04, "Device Internal Reset" },
 { 0x29, 0x05, "Transceiver Mode Changed to Single Ended" },
 { 0x29, 0x06, "Transceiver Mode Changed to LVD" },
 { 0x29, 0x07, "I_T Nexus Loss Occurred" },
 { 0x2A, 0x00, "Parameters Changed" },
 { 0x2A, 0x01, "Mode Parameters Changed" },
 { 0x2A, 0x02, "Log Parameters Changed" },
 { 0x2A, 0x03, "Reservations Preempted" },
 { 0x2A, 0x04, "Reservations Released" },
 { 0x2A, 0x05, "Registrations Preempted" },
 { 0x2A, 0x06, "Asymmetric Access State Changed" },
 { 0x2A, 0x07, "Implicit Asymmetric Access State Transition Failed" },
 { 0x2A, 0x08, "Priority Changed" },
 { 0x2A, 0x09, "Capacity Data Has Changed" },
 { 0x2A, 0x0A, "Error History I_T Nexus Cleared" },
 { 0x2A, 0x0B, "Error History Snapshot Released" },
 { 0x2A, 0x0C, "Error Recovery Attributes Have Changed" },
 { 0x2A, 0x0D, "Data Encryption Capabilities Changed" },
 { 0x2A, 0x10, "Timestamp Changed" },
 { 0x2A, 0x11, "Data Encryption Parameters Changed By Another I_T Nexus" },
 { 0x2A, 0x12, "Data Encryption Parameters Changed By Vendor Specific Event" },
 { 0x2A, 0x13, "Data Encryption Key Instance Counter Has Changed" },
 { 0x2A, 0x14, "SA Creation Capabilities Data Has Changed" },
 { 0x2B, 0x00, "Copy Cannot Execute Since Host Cannot Disconnect" },
 { 0x2C, 0x00, "Command Sequence Error" },
 { 0x2C, 0x01, "Too Many Windows Specified" },
 { 0x2C, 0x02, "Invalid Combination of Windows Specified" },
 { 0x2C, 0x03, "Current Program Area Is Not Empty" },
 { 0x2C, 0x04, "Current Program Area Is Empty" },
 { 0x2C, 0x05, "Illegal Power Condition Request" },
 { 0x2C, 0x06, "Persistent Prevent Conflict" },
 { 0x2C, 0x07, "Previous Busy Status" },
 { 0x2C, 0x08, "Previous Task Set Full Status" },
 { 0x2C, 0x09, "Previous Reservation Conflict Status" },
 { 0x2C, 0x0A, "Partition Or Collection Contains User Objects" },
 { 0x2C, 0x0B, "Not Reserved" },
 { 0x2C, 0x0C, "ORWrite Generation Does Not Match" },
 { 0x2D, 0x00, "Overwrite Error On Update In Place" },
 { 0x2E, 0x00, "Insufficient Time For Operation" },
 { 0x2F, 0x00, "Commands Cleared By Another Initiator" },
 { 0x2F, 0x01, "Commands Cleared By Power Loss Notification" },
 { 0x2F, 0x02, "Commands Cleared By Device Server" },
 { 0x30, 0x00, "Incompatible Medium Installed" },
 { 0x30, 0x01, "Cannot Read Medium - Unknown Format" },
 { 0x30, 0x02, "Cannot Read Medium - Incompatible Format" },
 { 0x30, 0x03, "Cleaning Cartridge Installed" },
 { 0x30, 0x04, "Cannot Write Medium - Unknown Format" },
 { 0x30, 0x05, "Cannot Write Medium - Incompatible Format" },
 { 0x30, 0x06, "Cannot Format Medium - Incompatible Medium" },
 { 0x30, 0x07, "Cleaning Failure" },
 { 0x30, 0x08, "Cannot Write - Application Code Mismatch" },
 { 0x30, 0x09, "Current Session Not Fixated For Append" },
 { 0x30, 0x0A, "Cleaning Request Rejected" },
 { 0x30, 0x10, "Medium Not Formatted" },
 { 0x30, 0x11, "Incompatible Volume Type" },
 { 0x30, 0x12, "Incompatible Volume Qualifier" },
 { 0x30, 0x13, "Cleaning Volume Expired" },
 { 0x31, 0x00, "Medium Format Corrupted" },
 { 0x31, 0x01, "Format Command Failed" },
 { 0x31, 0x02, "Zoned Formatting Failed Due To Spare Linking" },
 { 0x32, 0x00, "No Defect Spare Location Available" },
 { 0x32, 0x01, "Defect List Update Failure" },
 { 0x33, 0x00, "Tape Length Error" },
 { 0x34, 0x00, "Enclosure Failure" },
 { 0x35, 0x00, "Enclosure Services Failure" },
 { 0x35, 0x01, "Unsupported Enclosure Function" },
 { 0x35, 0x02, "Enclosure Services Unavailable" },
 { 0x35, 0x03, "Enclosure Services Transfer Failure" },
 { 0x35, 0x04, "Enclosure Services Transfer Refused" },
 { 0x36, 0x00, "Ribbon, Ink, or Toner Failure" },
 { 0x37, 0x00, "Rounded Parameter" },
 { 0x38, 0x00, "Event Status Notification" },
 { 0x38, 0x02, "ESN - Power Management Class Event" },
 { 0x38, 0x04, "ESN - Media Class Event" },
 { 0x38, 0x06, "ESN - Device Busy Class Event" },
 { 0x39, 0x00, "Saving Parameters Not Supported" },
 { 0x3A, 0x00, "Medium Not Present" },
 { 0x3A, 0x01, "Medium Not Present - Tray Closed" },
 { 0x3A, 0x02, "Medium Not Present - Tray Open" },
 { 0x3A, 0x03, "Medium Not Present - Loadable" },
 { 0x3A, 0x04, "Medium Not Present - Medium Auxiliary Memory Accessible" },
 { 0x3B, 0x00, "Sequential Positioning Error" },
 { 0x3B, 0x01, "Tape Position Error At Beginning-of-Medium" },
 { 0x3B, 0x02, "Tape Position Error At End-of-Medium" },
 { 0x3B, 0x03, "Tape or Electronic Vertical Forms Unit Not Ready" },
 { 0x3B, 0x04, "Slew Failure" },
 { 0x3B, 0x05, "Paper Jam" },
 { 0x3B, 0x06, "Failed To Sense Top-Of-Form" },
 { 0x3B, 0x07, "Failed To Sense Bottom-Of-Form" },
 { 0x3B, 0x08, "Reposition Error" },
 { 0x3B, 0x09, "Read Past End Of Medium" },
 { 0x3B, 0x0A, "Read Past Beginning Of Medium" },
 { 0x3B, 0x0B, "Position Past End Of Medium" },
 { 0x3B, 0x0C, "Position Past Beginning Of Medium" },
 { 0x3B, 0x0D, "Medium Destination Element Full" },
 { 0x3B, 0x0E, "Medium Source Element Empty" },
 { 0x3B, 0x0F, "End Of Medium Reached" },
 { 0x3B, 0x11, "Medium Magazine Not Accessible" },
 { 0x3B, 0x12, "Medium Magazine Removed" },
 { 0x3B, 0x13, "Medium Magazine Inserted" },
 { 0x3B, 0x14, "Medium Magazine Locked" },
 { 0x3B, 0x15, "Medium Magazine Unlocked" },
 { 0x3B, 0x16, "Mechanical Positioning Or Changer Error" },
 { 0x3B, 0x17, "Read Past End Of User Object" },
 { 0x3B, 0x18, "Element Disabled" },
 { 0x3B, 0x19, "Element Enabled" },
 { 0x3B, 0x1A, "Data Transfer Device Removed" },
 { 0x3B, 0x1B, "Data Transfer Device Inserted" },
 { 0x3D, 0x00, "Invalid Bits In IDENTIFY Message" },
 { 0x3E, 0x00, "Logical Unit Has Not Self-Configured Yet" },
 { 0x3E, 0x01, "Logical Unit Failure" },
 { 0x3E, 0x02, "Timeout On Logical Unit" },
 { 0x3E, 0x03, "Logical Unit Failed Self-Test" },
 { 0x3E, 0x04, "Logical Unit Unable To Update Self-Test Log" },
 { 0x3F, 0x00, "Target Operating Conditions Have Changed" },
 { 0x3F, 0x01, "Microcode Has Changed" },
 { 0x3F, 0x02, "Changed Operating Definition" },
 { 0x3F, 0x03, "INQUIRY Data Has Changed" },
 { 0x3F, 0x04, "component Device Attached" },
 { 0x3F, 0x05, "Device Identifier Changed" },
 { 0x3F, 0x06, "Redundancy Group Created Or Modified" },
 { 0x3F, 0x07, "Redundancy Group Deleted" },
 { 0x3F, 0x08, "Spare Created Or Modified" },
 { 0x3F, 0x09, "Spare Deleted" },
 { 0x3F, 0x0A, "Volume Set Created Or Modified" },
 { 0x3F, 0x0B, "Volume Set Deleted" },
 { 0x3F, 0x0C, "Volume Set Deassigned" },
 { 0x3F, 0x0D, "Volume Set Reassigned" },
 { 0x3F, 0x0E, "Reported LUNs Data Has Changed" },
 { 0x3F, 0x0F, "Echo Buffer Overwritten" },
 { 0x3F, 0x10, "Medium Loadable" },
 { 0x3F, 0x11, "Medium Auxiliary Memory Accessible" },
 { 0x3F, 0x12, "iSCSI IP Address Added" },
 { 0x3F, 0x13, "iSCSI IP Address Removed" },
 { 0x3F, 0x14, "iSCSI IP Address Changed" },
 { 0x40, 0x00, "RAM FAILURE (Should Use 40 NN)" },




 { 0x41, 0x00, "Data Path FAILURE (Should Use 40 NN)" },
 { 0x42, 0x00, "Power-On or Self-Test FAILURE (Should Use 40 NN)" },
 { 0x43, 0x00, "Message Error" },
 { 0x44, 0x00, "Internal Target Failure" },
 { 0x44, 0x71, "ATA Device Failed Set Features" },
 { 0x45, 0x00, "Select Or Reselect Failure" },
 { 0x46, 0x00, "Unsuccessful Soft Reset" },
 { 0x47, 0x00, "SCSI Parity Error" },
 { 0x47, 0x01, "Data Phase CRC Error Detected" },
 { 0x47, 0x02, "SCSI Parity Error Detected During ST Data Phase" },
 { 0x47, 0x03, "Information Unit iuCRC Error Detected" },
 { 0x47, 0x04, "Asynchronous Information Protection Error Detected" },
 { 0x47, 0x05, "Protocol Service CRC Error" },
 { 0x47, 0x06, "PHY Test Function In Progress" },
 { 0x47, 0x7F, "Some Commands Cleared By iSCSI Protocol Event" },
 { 0x48, 0x00, "Initiator Detected Error Message Received" },
 { 0x49, 0x00, "Invalid Message Error" },
 { 0x4A, 0x00, "Command Phase Error" },
 { 0x4B, 0x00, "Data Phase Error" },
 { 0x4B, 0x01, "Invalid Target Port Transfer Tag Received" },
 { 0x4B, 0x02, "Too Much Write Data" },
 { 0x4B, 0x03, "ACK/NAK Timeout" },
 { 0x4B, 0x04, "NAK Received" },
 { 0x4B, 0x05, "Data Offset Error" },
 { 0x4B, 0x06, "Initiator Response Timeout" },
 { 0x4B, 0x07, "Connection Lost" },
 { 0x4C, 0x00, "Logical Unit Failed Self-Configuration" },




 { 0x4E, 0x00, "Overlapped Commands Attempted" },
 { 0x50, 0x00, "Write Append Error" },
 { 0x50, 0x01, "Write Append Position Error" },
 { 0x50, 0x02, "Position Error Related To Timing" },
 { 0x51, 0x00, "Erase Failure" },
 { 0x51, 0x01, "Erase Failure - Incomplete Erase Operation Detected" },
 { 0x52, 0x00, "Cartridge Fault" },
 { 0x53, 0x00, "Media Load or Eject Failed" },
 { 0x53, 0x01, "Unload Tape Failure" },
 { 0x53, 0x02, "Medium Removal Prevented" },
 { 0x53, 0x03, "Medium Removal Prevented By Data Transfer Element" },
 { 0x53, 0x04, "Medium Thread Or Unthread Failure" },
 { 0x53, 0x05, "Volume Identifier Invalid" },
 { 0x53, 0x06, "Volume Identifier Missing" },
 { 0x53, 0x07, "Duplicate Volume Identifier" },
 { 0x53, 0x08, "Element Status Unknown" },
 { 0x54, 0x00, "SCSI To Host System Interface Failure" },
 { 0x55, 0x00, "System Resource Failure" },
 { 0x55, 0x01, "System Buffer Full" },
 { 0x55, 0x02, "Insufficient Reservation Resources" },
 { 0x55, 0x03, "Insufficient Resources" },
 { 0x55, 0x04, "Insufficient Registration Resources" },
 { 0x55, 0x05, "Insufficient Access Control Resources" },
 { 0x55, 0x06, "Auxiliary Memory Out Of Space" },
 { 0x55, 0x07, "Quota Error" },
 { 0x55, 0x08, "Maximum Number Of Supplemental Decryption Keys Exceeded" },
 { 0x55, 0x09, "Medium Auxiliary Memory Not Accessible" },
 { 0x55, 0x0A, "Data Currently Unavailable" },
 { 0x55, 0x0B, "Insufficient Power For Operation" },
 { 0x57, 0x00, "Unable To Recover Table-Of-Contents" },
 { 0x58, 0x00, "Generation Does Not Exist" },
 { 0x59, 0x00, "Updated Block Read" },
 { 0x5A, 0x00, "Operator Request or State Change Input" },
 { 0x5A, 0x01, "Operator Medium Removal Requested" },
 { 0x5A, 0x02, "Operator Selected Write Protect" },
 { 0x5A, 0x03, "Operator Selected Write Permit" },
 { 0x5B, 0x00, "Log Exception" },
 { 0x5B, 0x01, "Threshold Condition Met" },
 { 0x5B, 0x02, "Log Counter At Maximum" },
 { 0x5B, 0x03, "Log List Codes Exhausted" },
 { 0x5C, 0x00, "RPL Status Change" },
 { 0x5C, 0x01, "Spindles Synchronized" },
 { 0x5C, 0x02, "Spindles Not Synchronized" },
 { 0x5D, 0x00, "Failure Prediction Threshold Exceeded" },
 { 0x5D, 0x01, "Media Failure Prediction Threshold Exceeded" },
 { 0x5D, 0x02, "Logical Unit Failure Prediction Threshold Exceeded" },
 { 0x5D, 0x03, "Spare Area Exhaustion Prediction Threshold Exceeded" },
 { 0x5D, 0x10, "Hardware Impending Failure General Hard Drive Failure" },
 { 0x5D, 0x11, "Hardware Impending Failure Drive Error Rate Too High" },
 { 0x5D, 0x12, "Hardware Impending Failure Data Error Rate Too High" },
 { 0x5D, 0x13, "Hardware Impending Failure Seek Error Rate Too High" },
 { 0x5D, 0x14, "Hardware Impending Failure Too Many Block Reassigns" },
 { 0x5D, 0x15, "Hardware Impending Failure Access Times Too High" },
 { 0x5D, 0x16, "Hardware Impending Failure Start Unit Times Too High" },
 { 0x5D, 0x17, "Hardware Impending Failure Channel Parametrics" },
 { 0x5D, 0x18, "Hardware Impending Failure Controller Detected" },
 { 0x5D, 0x19, "Hardware Impending Failure Throughput Performance" },
 { 0x5D, 0x1A, "Hardware Impending Failure Seek Time Performance" },
 { 0x5D, 0x1B, "Hardware Impending Failure Spin-Up Retry Count" },
 { 0x5D, 0x1C, "Hardware Impending Failure Drive Calibration Retry Count" },
 { 0x5D, 0x20, "Controller Impending Failure General Hard Drive Failure" },
 { 0x5D, 0x21, "Controller Impending Failure Drive Error Rate Too High" },
 { 0x5D, 0x22, "Controller Impending Failure Data Error Rate Too High" },
 { 0x5D, 0x23, "Controller Impending Failure Seek Error Rate Too High" },
 { 0x5D, 0x24, "Controller Impending Failure Too Many Block Reassigns" },
 { 0x5D, 0x25, "Controller Impending Failure Access Times Too High" },
 { 0x5D, 0x26, "Controller Impending Failure Start Unit Times Too High" },
 { 0x5D, 0x27, "Controller Impending Failure Channel Parametrics" },
 { 0x5D, 0x28, "Controller Impending Failure Controller Detected" },
 { 0x5D, 0x29, "Controller Impending Failure Throughput Performance" },
 { 0x5D, 0x2A, "Controller Impending Failure Seek Time Performance" },
 { 0x5D, 0x2B, "Controller Impending Failure Spin-Up Retry Count" },
 { 0x5D, 0x2C, "Controller Impending Failure Drive Calibration Retry Count" },
 { 0x5D, 0x30, "Data Channel Impending Failure General Hard Drive Failure" },
 { 0x5D, 0x31, "Data Channel Impending Failure Drive Error Rate Too High" },
 { 0x5D, 0x32, "Data Channel Impending Failure Data Error Rate Too High" },
 { 0x5D, 0x33, "Data Channel Impending Failure Seek Error Rate Too High" },
 { 0x5D, 0x34, "Data Channel Impending Failure Too Many Block Reassigns" },
 { 0x5D, 0x35, "Data Channel Impending Failure Access Times Too High" },
 { 0x5D, 0x36, "Data Channel Impending Failure Start Unit Times Too High" },
 { 0x5D, 0x37, "Data Channel Impending Failure Channel Parametrics" },
 { 0x5D, 0x38, "Data Channel Impending Failure Controller Detected" },
 { 0x5D, 0x39, "Data Channel Impending Failure Throughput Performance" },
 { 0x5D, 0x3A, "Data Channel Impending Failure Seek Time Performance" },
 { 0x5D, 0x3B, "Data Channel Impending Failure Spin-Up Retry Count" },
 { 0x5D, 0x3C, "Data Channel Impending Failure Drive Calibration Retry Count" },
 { 0x5D, 0x40, "Servo Impending Failure General Hard Drive Failure" },
 { 0x5D, 0x41, "Servo Impending Failure Drive Error Rate Too High" },
 { 0x5D, 0x42, "Servo Impending Failure Data Error Rate Too High" },
 { 0x5D, 0x43, "Servo Impending Failure Seek Error Rate Too High" },
 { 0x5D, 0x44, "Servo Impending Failure Too Many Block Reassigns" },
 { 0x5D, 0x45, "Servo Impending Failure Access Times Too High" },
 { 0x5D, 0x46, "Servo Impending Failure Start Unit Times Too High" },
 { 0x5D, 0x47, "Servo Impending Failure Channel Parametrics" },
 { 0x5D, 0x48, "Servo Impending Failure Controller Detected" },
 { 0x5D, 0x49, "Servo Impending Failure Throughput Performance" },
 { 0x5D, 0x4A, "Servo Impending Failure Seek Time Performance" },
 { 0x5D, 0x4B, "Servo Impending Failure Spin-Up Retry Count" },
 { 0x5D, 0x4C, "Servo Impending Failure Drive Calibration Retry Count" },
 { 0x5D, 0x50, "Spindle Impending Failure General Hard Drive Failure" },
 { 0x5D, 0x51, "Spindle Impending Failure Drive Error Rate Too High" },
 { 0x5D, 0x52, "Spindle Impending Failure Data Error Rate Too High" },
 { 0x5D, 0x53, "Spindle Impending Failure Seek Error Rate Too High" },
 { 0x5D, 0x54, "Spindle Impending Failure Too Many Block Reassigns" },
 { 0x5D, 0x55, "Spindle Impending Failure Access Times Too High" },
 { 0x5D, 0x56, "Spindle Impending Failure Start Unit Times Too High" },
 { 0x5D, 0x57, "Spindle Impending Failure Channel Parametrics" },
 { 0x5D, 0x58, "Spindle Impending Failure Controller Detected" },
 { 0x5D, 0x59, "Spindle Impending Failure Throughput Performance" },
 { 0x5D, 0x5A, "Spindle Impending Failure Seek Time Performance" },
 { 0x5D, 0x5B, "Spindle Impending Failure Spin-Up Retry Count" },
 { 0x5D, 0x5C, "Spindle Impending Failure Drive Calibration Retry Count" },
 { 0x5D, 0x60, "Firmware Impending Failure General Hard Drive Failure" },
 { 0x5D, 0x61, "Firmware Impending Failure Drive Error Rate Too High" },
 { 0x5D, 0x62, "Firmware Impending Failure Data Error Rate Too High" },
 { 0x5D, 0x63, "Firmware Impending Failure Seek Error Rate Too High" },
 { 0x5D, 0x64, "Firmware Impending Failure Too Many Block Reassigns" },
 { 0x5D, 0x65, "Firmware Impending Failure Access Times Too High" },
 { 0x5D, 0x66, "Firmware Impending Failure Start Unit Times Too High" },
 { 0x5D, 0x67, "Firmware Impending Failure Channel Parametrics" },
 { 0x5D, 0x68, "Firmware Impending Failure Controller Detected" },
 { 0x5D, 0x69, "Firmware Impending Failure Throughput Performance" },
 { 0x5D, 0x6A, "Firmware Impending Failure Seek Time Performance" },
 { 0x5D, 0x6B, "Firmware Impending Failure Spin-Up Retry Count" },
 { 0x5D, 0x6C, "Firmware Impending Failure Drive Calibration Retry Count" },
 { 0x5D, 0xFF, "Failure Prediction Threshold Exceeded (false)" },
 { 0x5E, 0x00, "Low Power Condition On" },
 { 0x5E, 0x01, "Idle Condition Activated By Timer" },
 { 0x5E, 0x02, "Standby Condition Activated By Timer" },
 { 0x5E, 0x03, "Idle Condition Activated By Command" },
 { 0x5E, 0x04, "Standby Condition Activated By Command" },
 { 0x5E, 0x05, "IDLE_B Condition Activated By Timer" },
 { 0x5E, 0x06, "IDLE_B Condition Activated By Command" },
 { 0x5E, 0x07, "IDLE_C Condition Activated By Timer" },
 { 0x5E, 0x08, "IDLE_C Condition Activated By Command" },
 { 0x5E, 0x09, "STANDBY_Y Condition Activated By Timer" },
 { 0x5E, 0x0A, "STANDBY_Y Condition Activated By Command" },
 { 0x5E, 0x41, "Power State Change To Active" },
 { 0x5E, 0x42, "Power State Change To Idle" },
 { 0x5E, 0x43, "Power State Change To Standby" },
 { 0x5E, 0x45, "Power State Change To Sleep" },
 { 0x5E, 0x47, "Power State Change To Device Control" },
 { 0x60, 0x00, "Lamp Failure" },
 { 0x61, 0x00, "Video Acquisition Error" },
 { 0x61, 0x01, "Unable To Acquire Video" },
 { 0x61, 0x02, "Out Of Focus" },
 { 0x62, 0x00, "Scan Head Positioning Error" },
 { 0x63, 0x00, "End Of User Area Encountered On This Track" },
 { 0x63, 0x01, "Packet Does Not Fit In Available Space" },
 { 0x64, 0x00, "Illegal Mode For This Track" },
 { 0x64, 0x01, "Invalid Packet Size" },
 { 0x65, 0x00, "Voltage Fault" },
 { 0x66, 0x00, "Automatic Document Feeder Cover Up" },
 { 0x66, 0x01, "Automatic Document Feeder Lift Up" },
 { 0x66, 0x02, "Document Jam In Automatic Document Feeder" },
 { 0x66, 0x03, "Document Miss Feed Automatic In Document Feeder" },
 { 0x67, 0x00, "Configuration Failure" },
 { 0x67, 0x01, "Configuration Of Incapable Logical Units Failed" },
 { 0x67, 0x02, "Add Logical Unit Failed" },
 { 0x67, 0x03, "Modification Of Logical Unit Failed" },
 { 0x67, 0x04, "Exchange Of Logical Unit Failed" },
 { 0x67, 0x05, "Remove Of Logical Unit Failed" },
 { 0x67, 0x06, "Attachment Of Logical Unit Failed" },
 { 0x67, 0x07, "Creation Of Logical Unit Failed" },
 { 0x67, 0x08, "Assign Failure Occurred" },
 { 0x67, 0x09, "Multiply Assigned Logical Unit" },
 { 0x67, 0x0A, "Set Target Port Groups Command Failed" },
 { 0x67, 0x0B, "ATA Device Feature Not Enabled" },
 { 0x68, 0x00, "Logical Unit Not Configured" },
 { 0x69, 0x00, "Data Loss On Logical Unit" },
 { 0x69, 0x01, "Multiple Logical Unit Failures" },
 { 0x69, 0x02, "Parity/Data Mismatch" },
 { 0x6A, 0x00, "Informational, Refer To Log" },
 { 0x6B, 0x00, "State Change Has Occurred" },
 { 0x6B, 0x01, "Redundancy Level Got Better" },
 { 0x6B, 0x02, "Redundancy Level Got Worse" },
 { 0x6C, 0x00, "Rebuild Failure Occurred" },
 { 0x6D, 0x00, "Recalculate Failure Occurred" },
 { 0x6E, 0x00, "Command To Logical Unit Failed" },
 { 0x6F, 0x00, "Copy Protection Key Exchange Failure - Authentication Failure" },
 { 0x6F, 0x01, "Copy Protection Key Exchange Failure - Key Not Present" },
 { 0x6F, 0x02, "Copy Protection Key Exchange Failure - Key Not Established" },
 { 0x6F, 0x03, "Read Of Scrambled Sector Without Authentication" },
 { 0x6F, 0x04, "Media Region Code Is Mismatched To Logical Unit Region" },
 { 0x6F, 0x05, "Drive Region Must Be Permanent/Region Reset Count Error" },




 { 0x71, 0x00, "Decompression Exception Long Algorithm ID" },
 { 0x72, 0x00, "Session Fixation Error" },
 { 0x72, 0x01, "Session Fixation Error Writing Lead-In" },
 { 0x72, 0x02, "Session Fixation Error Writing Lead-Out" },
 { 0x72, 0x03, "Session Fixation Error - Incomplete Track In Session" },
 { 0x72, 0x04, "Empty Or Partially Written Reserved Track" },
 { 0x72, 0x05, "No More Track Reservations Allowed" },
 { 0x72, 0x06, "RMZ Extension Is Not Allowed" },
 { 0x72, 0x07, "No More Test Zone Extensions Are Allowed" },
 { 0x73, 0x00, "CD Control Error" },
 { 0x73, 0x01, "Power Calibration Area Almost Full" },
 { 0x73, 0x02, "Power Calibration Area Is Full" },
 { 0x73, 0x03, "Power Calibration Area Error" },
 { 0x73, 0x04, "Program Memory Area Update Failure" },
 { 0x73, 0x05, "Program Memory Area Is Full" },
 { 0x73, 0x06, "RMA/PMA Is Almost Full" },
 { 0x73, 0x10, "Current Power Calibration Area Almost Full" },
 { 0x73, 0x11, "Current Power Calibration Area Is Full" },
 { 0x73, 0x17, "RDZ Is Full" },
 { 0x74, 0x00, "Security Error" },
 { 0x74, 0x01, "Unable To Decrypt Data" },
 { 0x74, 0x02, "Unencrypted Data Encountered While Decrypting" },
 { 0x74, 0x03, "Incorrect Data Encryption Key" },
 { 0x74, 0x04, "Cryptographic Integrity Validation Failed" },
 { 0x74, 0x05, "Error Decrypting Data" },
 { 0x74, 0x06, "Unknown Signature Verification Key" },
 { 0x74, 0x07, "Encryption Parameters Not Useable" },
 { 0x74, 0x08, "Digital Signature Validation Failure" },
 { 0x74, 0x09, "Encryption Mode Mismatch On Read" },
 { 0x74, 0x0A, "Encrypted Block Not Raw Read Enabled" },
 { 0x74, 0x0B, "Incorrect Encryption Parameters" },
 { 0x74, 0x0C, "Unable To Decrypt Parameter List" },
 { 0x74, 0x0D, "Encryption Algorithm Disabled" },
 { 0x74, 0x10, "SA Creation Parameter Value Invalid" },
 { 0x74, 0x11, "SA Creation Parameter Value Rejected" },
 { 0x74, 0x12, "Invalid SA Usage" },
 { 0x74, 0x21, "Data Encryption Configuration Prevented" },
 { 0x74, 0x30, "SA Creation Parameter Not Supported" },
 { 0x74, 0x40, "Authentication Failed" },
 { 0x74, 0x61, "External Data Encryption Key Manager Access Error" },
 { 0x74, 0x62, "External Data Encryption Key Manager Error" },
 { 0x74, 0x63, "External Data Encryption Key Not Found" },
 { 0x74, 0x64, "External Data Encryption Request Not Authorized" },
 { 0x74, 0x6E, "External Data Encryption Control Timeout" },
 { 0x74, 0x6F, "External Data Encryption Control Error" },
 { 0x74, 0x71, "Logical Unit Access Not Authorized" },
 { 0x74, 0x79, "Security Conflict In Translated Device" },
 { 0x00, 0x00, ((void *)0) }
};

static __inline void
asc2ascii(u_int8_t asc, u_int8_t ascq, char *result, size_t len)
{
 int i;


 switch (asc) {
 case 0x40:
  if (ascq >= 0x80) {
   snprintf(result, len,
              "Diagnostic Failure on Component 0x%02x", ascq);
   return;
  }
  break;
 case 0x4d:
  snprintf(result, len,
      "Tagged Overlapped Commands (0x%02x = TASK TAG)", ascq);
  return;
 case 0x70:
  snprintf(result, len,
      "Decompression Exception Short Algorithm ID OF 0x%02x",
      ascq);
  return;
 default:
  break;
 }


 for (i = 0; adesc[i].description != ((void *)0); i++) {
  if (adesc[i].asc == asc && adesc[i].ascq == ascq) {
   strlcpy(result, adesc[i].description, len);
   return;
  }
 }


 snprintf(result, len, "ASC 0x%02x ASCQ 0x%02x", asc, ascq);
}


void
scsi_print_sense(struct scsi_xfer *xs)
{
 struct scsi_sense_data *sense = &xs->sense;
 u_int8_t serr = sense->error_code &
          0x7F;
 int32_t info;
 char *sbs;

 sc_print_addr(xs->sc_link);


 printf("%sCheck Condition (error %#x) on opcode 0x%x\n",
     (serr == 0x71) ? "DEFERRED " : "", serr,
     xs->cmd->opcode);

 if (serr != 0x70 && serr != 0x71) {
  if ((sense->error_code & 0x80) != 0) {
   struct scsi_sense_data_unextended *usense =
       (struct scsi_sense_data_unextended *)sense;
   printf("   AT BLOCK #: %d (decimal)",
       _3btol(usense->block));
  }
  return;
 }

 printf("    SENSE KEY: %s\n", scsi_decode_sense(sense,
     1));

 if (sense->flags & (0x80 | 0x40 | 0x20)) {
  char pad = ' ';

  printf("             ");
  if (sense->flags & 0x80) {
   printf("%c Filemark Detected", pad);
   pad = ',';
  }
  if (sense->flags & 0x40) {
   printf("%c EOM Detected", pad);
   pad = ',';
  }
  if (sense->flags & 0x20)
   printf("%c Incorrect Length Indicator Set", pad);
  printf("\n");
 }





 info = _4btol(&sense->info[0]);
 if (info)
  printf("         INFO: 0x%x (VALID flag %s)\n", info,
      sense->error_code & 0x80 ? "on" : "off");

 if (sense->extra_len < 4)
  return;

 info = _4btol(&sense->cmd_spec_info[0]);
 if (info)
  printf(" COMMAND INFO: 0x%x\n", info);
 sbs = scsi_decode_sense(sense, 2);
 if (strlen(sbs) > 0)
  printf("     ASC/ASCQ: %s\n", sbs);
 if (sense->fru != 0)
  printf("     FRU CODE: 0x%x\n", sense->fru);
 sbs = scsi_decode_sense(sense, 3);
 if (strlen(sbs) > 0)
  printf("         SKSV: %s\n", sbs);
}

char *
scsi_decode_sense(struct scsi_sense_data *sense, int flag)
{
 static char rqsbuf[132];
 u_int16_t count;
 u_int8_t skey, spec_1;
 int len;

 __builtin_bzero((rqsbuf), (sizeof(rqsbuf)));

 skey = sense->flags & 0x0F;
 spec_1 = sense->sense_key_spec_1;
 count = _2btol(&sense->sense_key_spec_2);

 switch (flag) {
 case 1:
  strlcpy(rqsbuf, sense_keys[skey], sizeof(rqsbuf));
  break;
 case 2:
  asc2ascii(sense->add_sense_code, sense->add_sense_code_qual,
      rqsbuf, sizeof(rqsbuf));
  break;
 case 3:
  if (sense->extra_len < 9 || ((spec_1 & 0x80) == 0))
   break;
  switch (skey) {
  case 0x05:
   len = snprintf(rqsbuf, sizeof rqsbuf,
       "Error in %s, Offset %d",
       (spec_1 & 0x40) ? "CDB" : "Parameters",
       count);
   if ((len != -1 && len < sizeof rqsbuf) &&
       (spec_1 & 0x08))
    snprintf(rqsbuf+len, sizeof rqsbuf - len,
        ", bit %d", spec_1 & 0x07);
   break;
  case 0x01:
  case 0x03:
  case 0x04:
   snprintf(rqsbuf, sizeof rqsbuf,
       "Actual Retry Count: %d", count);
   break;
  case 0x02:
   snprintf(rqsbuf, sizeof rqsbuf,
       "Progress Indicator: %d", count);
   break;
  default:
   break;
  }
  break;
 default:
  break;
 }

 return (rqsbuf);
}
# 2532 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_base.c"
void
scsi_cmd_rw_decode(struct scsi_generic *cmd, u_int64_t *blkno,
    u_int32_t *nblks)
{
 switch (cmd->opcode) {
 case 0x08:
 case 0x0a: {
  struct scsi_rw *rw = (struct scsi_rw *)cmd;
  *blkno = _3btol(rw->addr) & (0x1F << 16 | 0xffff);
  *nblks = rw->length ? rw->length : 0x100;
  break;
 }
 case 0x28:
 case 0x2a: {
  struct scsi_rw_big *rwb = (struct scsi_rw_big *)cmd;
  *blkno = _4btol(rwb->addr);
  *nblks = _2btol(rwb->length);
  break;
 }
 case 0xa8:
 case 0xaa: {
  struct scsi_rw_12 *rw12 = (struct scsi_rw_12 *)cmd;
  *blkno = _4btol(rw12->addr);
  *nblks = _4btol(rw12->length);
  break;
 }
 case 0x88:
 case 0x8a: {
  struct scsi_rw_16 *rw16 = (struct scsi_rw_16 *)cmd;
  *blkno = _8btol(rw16->addr);
  *nblks = _4btol(rw16->length);
  break;
 }
 default:
  panic("scsi_cmd_rw_decode: bad opcode 0x%02x", cmd->opcode);
 }
}
