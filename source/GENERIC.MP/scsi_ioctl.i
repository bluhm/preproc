# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_ioctl.c"
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_ioctl.c"
# 40 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_ioctl.c"
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
# 41 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_ioctl.c" 2
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/errno.h" 1
# 42 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_ioctl.c" 2
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
# 43 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_ioctl.c" 2
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
# 44 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_ioctl.c" 2
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/file.h" 1
# 35 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/file.h"
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/fcntl.h" 1
# 179 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/fcntl.h"
struct flock {
 off_t l_start;
 off_t l_len;
 pid_t l_pid;
 short l_type;
 short l_whence;
};
# 36 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/file.h" 2




struct proc;
struct uio;
struct knote;
struct stat;
struct file;
struct ucred;

struct fileops {
 int (*fo_read)(struct file *, off_t *, struct uio *,
      struct ucred *);
 int (*fo_write)(struct file *, off_t *, struct uio *,
      struct ucred *);
 int (*fo_ioctl)(struct file *, u_long, caddr_t,
      struct proc *);
 int (*fo_poll)(struct file *, int, struct proc *);
 int (*fo_kqfilter)(struct file *, struct knote *);
 int (*fo_stat)(struct file *, struct stat *, struct proc *);
 int (*fo_close)(struct file *, struct proc *);
};





struct file {
 struct { struct file *le_next; struct file **le_prev; } f_list;
 short f_flag;




 short f_type;
 long f_count;
 struct ucred *f_cred;
 struct fileops *f_ops;
 off_t f_offset;
 void *f_data;
 int f_iflags;
 u_int64_t f_rxfer;
 u_int64_t f_wxfer;
 u_int64_t f_seek;
 u_int64_t f_rbytes;
 u_int64_t f_wbytes;
};
# 99 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/file.h"
int fdrop(struct file *, struct proc *);

struct filelist { struct file *lh_first; };
extern struct filelist filehead;
extern int maxfiles;
extern int numfiles;
extern struct fileops vnops;
# 45 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_ioctl.c" 2
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
# 46 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_ioctl.c" 2
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
# 47 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_ioctl.c" 2


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
# 50 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_ioctl.c" 2
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
# 51 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_ioctl.c" 2

# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/scsiio.h" 1
# 9 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/scsiio.h"
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/ioctl.h" 1
# 43 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/ioctl.h"
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/ttycom.h" 1
# 43 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/ttycom.h"
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/ioccom.h" 1
# 44 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/ttycom.h" 2







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
# 44 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/ioctl.h" 2
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/filio.h" 1
# 45 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/ioctl.h" 2
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/sockio.h" 1
# 46 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/ioctl.h" 2
# 10 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/scsiio.h" 2




typedef struct scsireq {
 u_long flags;
 u_long timeout;
 u_char cmd[16];
 u_char cmdlen;
 caddr_t databuf;
 u_long datalen;
 u_long datalen_used;
 u_char sense[48];
 u_char senselen;
 u_char senselen_used;
 u_char status;
 u_char retsts;
 int error;
} scsireq_t;
# 53 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/scsiio.h"
struct scsi_addr {
 int type;


 int scbus;
 int target;
 int lun;
};




struct sbioc_device {
 void *sd_cookie;
 int sd_target;
 int sd_lun;
};
# 53 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_ioctl.c" 2
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/ataio.h" 1
# 10 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/ataio.h"
typedef struct atareq {
 u_long flags;
 u_char command;
 u_char features;
 u_char sec_count;
 u_char sec_num;
 u_char head;
 u_short cylinder;

 caddr_t databuf;
 u_long datalen;
 int timeout;
 u_char retsts;
 u_char error;
} atareq_t;
# 39 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/ataio.h"
typedef struct atagettrace {
 unsigned int buf_size;
 void *buf;
 unsigned int bytes_copied;
 unsigned int bytes_left;
} atagettrace_t;
# 54 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../scsi/scsi_ioctl.c" 2

int scsi_ioc_cmd(struct scsi_link *, scsireq_t *);
int scsi_ioc_ata_cmd(struct scsi_link *, atareq_t *);

const unsigned char scsi_readsafe_cmd[256] = {
 [0x00] = 1,
 [0x03] = 1,
 [0x08] = 1,
 [0x12] = 1,
 [0x1a] = 1,
 [0x1b] = 1,
 [0x23] = 1,
 [0x25] = 1,
 [0x28] = 1,
 [0x2b] = 1,
 [0x2f] = 1,
 [0x3c] = 1,
 [0x3e] = 1,
 [0x42] = 1,
 [0x43] = 1,
 [0x44] = 1,
 [0x45] = 1,
 [0x46] = 1,
 [0x47] = 1,
 [0x48] = 1,
 [0x4a] = 1,
 [0x4b] = 1,
 [0x4e] = 1,
 [0x51] = 1,
 [0x52] = 1,
 [0x5a] = 1,
 [0x88] = 1,
 [0x8f] = 1,
 [0xa4] = 1,
 [0xa5] = 1,
 [0xa8] = 1,
 [0xac] = 1,
 [0xad] = 1,
 [0xb9] = 1,
 [0xba] = 1,
 [0xbc] = 1,
 [0xbd] = 1,
 [0xbe] = 1
};

int
scsi_ioc_cmd(struct scsi_link *link, scsireq_t *screq)
{
 struct scsi_xfer *xs;
 int err = 0;

 if (screq->cmdlen > sizeof(struct scsi_generic))
  return (14);
 if (screq->datalen > (64 * 1024))
  return (22);

 xs = scsi_xs_get(link, 0);
 if (xs == ((void *)0))
  return (12);

 __builtin_memcpy((xs->cmd), (screq->cmd), (screq->cmdlen));
 xs->cmdlen = screq->cmdlen;

 if (screq->datalen > 0) {
  xs->data = dma_alloc(screq->datalen, 0x0001 | 0x0008);
  if (xs->data == ((void *)0)) {
   err = 12;
   goto err;
  }
  xs->datalen = screq->datalen;
 }

 if (screq->flags & 0x00000001)
  xs->flags |= 0x00800;
 if (screq->flags & 0x00000002) {
  if (screq->datalen > 0) {
   err = copyin(screq->databuf, xs->data, screq->datalen);
   if (err != 0)
    goto err;
  }

  xs->flags |= 0x01000;
 }

 xs->flags |= 0x00020;
 xs->timeout = screq->timeout;
 xs->retries = 0;

 scsi_xs_sync(xs);

 screq->retsts = 0;
 screq->status = xs->status;
 switch (xs->error) {
 case 0:

  screq->datalen_used = xs->datalen - xs->resid;
  screq->retsts = 0x00;
  break;
 case 1:



  screq->senselen_used = min(sizeof(xs->sense),
      sizeof(screq->sense));
  __builtin_memcpy((screq->sense), (&xs->sense), (screq->senselen_used));
  screq->retsts = 0x03;
  break;
 case 6:



  printf("XS_SHORTSENSE\n");
  screq->senselen_used = min(sizeof(xs->sense),
      sizeof(screq->sense));
  __builtin_memcpy((screq->sense), (&xs->sense), (screq->senselen_used));
  screq->retsts = 0x04;
  break;
 case 2:
  screq->retsts = 0x04;
  break;
 case 4:
  screq->retsts = 0x01;
  break;
 case 5:
  screq->retsts = 0x02;
  break;
 default:
  screq->retsts = 0x04;
  break;
 }

 if (screq->datalen > 0 && screq->flags & 0x00000001) {
  err = copyout(xs->data, screq->databuf, screq->datalen);
  if (err != 0)
   goto err;
 }

err:
 if (xs->data)
  dma_free(xs->data, screq->datalen);
 scsi_xs_put(xs);

 return (err);
}

int
scsi_ioc_ata_cmd(struct scsi_link *link, atareq_t *atareq)
{
 struct scsi_xfer *xs;
 struct scsi_ata_passthru_12 *cdb;
 int err = 0;

 if (atareq->datalen > (64 * 1024))
  return (22);

 xs = scsi_xs_get(link, 0);
 if (xs == ((void *)0))
  return (12);

 cdb = (struct scsi_ata_passthru_12 *)xs->cmd;
 cdb->opcode = 0xa1;

 if (atareq->datalen > 0) {
  if (atareq->flags & 0x00000001) {
   cdb->count_proto = 0x08;
   cdb->flags = 0x08;
  } else {
   cdb->count_proto = 0x0a;
   cdb->flags = 0x00;
  }
  cdb->flags |= 0x02;
 } else {
  cdb->count_proto = 0x06;
  cdb->flags = 0x00;
 }
 cdb->features = atareq->features;
 cdb->sector_count = atareq->sec_count;
 cdb->lba_low = atareq->sec_num;
 cdb->lba_mid = atareq->cylinder;
 cdb->lba_high = atareq->cylinder >> 8;
 cdb->device = atareq->head & 0x0f;
 cdb->command = atareq->command;

 xs->cmdlen = sizeof(*cdb);

 if (atareq->datalen > 0) {
  xs->data = dma_alloc(atareq->datalen, 0x0001 | 0x0008);
  if (xs->data == ((void *)0)) {
   err = 12;
   goto err;
  }
  xs->datalen = atareq->datalen;
 }

 if (atareq->flags & 0x00000001)
  xs->flags |= 0x00800;
 if (atareq->flags & 0x00000002) {
  if (atareq->datalen > 0) {
   err = copyin(atareq->databuf, xs->data,
       atareq->datalen);
   if (err != 0)
    goto err;
  }

  xs->flags |= 0x01000;
 }

 xs->flags |= 0x00020;
 xs->retries = 0;

 scsi_xs_sync(xs);

 atareq->retsts = 0x02;
 switch (xs->error) {
 case 1:
 case 6:




 case 0:
  atareq->retsts = 0x00;
  break;
 default:
  atareq->retsts = 0x02;
  break;
 }

 if (atareq->datalen > 0 && atareq->flags & 0x00000001) {
  err = copyout(xs->data, atareq->databuf, atareq->datalen);
  if (err != 0)
   goto err;
 }

err:
 if (xs->data)
  dma_free(xs->data, atareq->datalen);
 scsi_xs_put(xs);

 return (err);
}






int
scsi_do_ioctl(struct scsi_link *link, u_long cmd, caddr_t addr, int flag)
{
 ;

 switch(cmd) {
 case ((unsigned long)0x40000000 | ((sizeof(struct scsi_addr) & 0x1fff) << 16) | ((('Q')) << 8) | ((9))): {
  struct scsi_addr *sca = (struct scsi_addr *)addr;

  if ((link->flags & (0x0200 | 0x0800)) == 0)

   sca->type = 0;
  else

   sca->type = 1;
  sca->scbus = link->bus->sc_dev.dv_unit;
  sca->target = link->target;
  sca->lun = link->lun;
  return (0);
 }
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(scsireq_t) & 0x1fff) << 16) | ((('Q')) << 8) | ((1))):
  if (scsi_readsafe_cmd[((scsireq_t *)addr)->cmd[0]])
   break;

 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(atareq_t) & 0x1fff) << 16) | ((('Q')) << 8) | ((8))):
 case ((unsigned long)0x80000000 | ((sizeof(int) & 0x1fff) << 16) | ((('Q')) << 8) | ((2))):
  if ((flag & 0x0002) == 0)
   return (1);
  break;
 default:
  if (link->adapter->ioctl)
   return ((link->adapter->ioctl)(link, cmd, addr,
       flag));
  else
   return (25);
 }

 switch(cmd) {
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(scsireq_t) & 0x1fff) << 16) | ((('Q')) << 8) | ((1))):
  return (scsi_ioc_cmd(link, (scsireq_t *)addr));
 case (((unsigned long)0x80000000|(unsigned long)0x40000000) | ((sizeof(atareq_t) & 0x1fff) << 16) | ((('Q')) << 8) | ((8))):
  return (scsi_ioc_ata_cmd(link, (atareq_t *)addr));
 case ((unsigned long)0x80000000 | ((sizeof(int) & 0x1fff) << 16) | ((('Q')) << 8) | ((2))): {
  int level = *((int *)addr);

  ;
  link->flags &= ~0x00f0;
  if (level & 1)
   link->flags |= 0x0010;
  if (level & 2)
   link->flags |= 0x0020;
  if (level & 4)
   link->flags |= 0x0040;
  if (level & 8)
   link->flags |= 0x0080;
  return (0);
 }
 default:

  panic("scsi_do_ioctl: impossible cmd (%#lx)", cmd);

  return (0);
 }
}
