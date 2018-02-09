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
struct ext2fs {
 u_int32_t e2fs_icount;
 u_int32_t e2fs_bcount;
 u_int32_t e2fs_rbcount;
 u_int32_t e2fs_fbcount;
 u_int32_t e2fs_ficount;
 u_int32_t e2fs_first_dblock;
 u_int32_t e2fs_log_bsize;
 u_int32_t e2fs_log_fsize;
 u_int32_t e2fs_bpg;
 u_int32_t e2fs_fpg;
 u_int32_t e2fs_ipg;
 u_int32_t e2fs_mtime;
 u_int32_t e2fs_wtime;
 u_int16_t e2fs_mnt_count;
 u_int16_t e2fs_max_mnt_count;
 u_int16_t e2fs_magic;
 u_int16_t e2fs_state;
 u_int16_t e2fs_beh;
 u_int16_t e2fs_minrev;
 u_int32_t e2fs_lastfsck;
 u_int32_t e2fs_fsckintv;
 u_int32_t e2fs_creator;
 u_int32_t e2fs_rev;
 u_int16_t e2fs_ruid;
 u_int16_t e2fs_rgid;
 u_int32_t e2fs_first_ino;
 u_int16_t e2fs_inode_size;
 u_int16_t e2fs_block_group_nr;
 u_int32_t e2fs_features_compat;
 u_int32_t e2fs_features_incompat;
 u_int32_t e2fs_features_rocompat;
 u_int8_t e2fs_uuid[16];
 char e2fs_vname[16];
 char e2fs_fsmnt[64];
 u_int32_t e2fs_algo;
 u_int8_t e2fs_prealloc;
 u_int8_t e2fs_dir_prealloc;
 u_int16_t e2fs_reserved_ngdb;
 u_int8_t e2fs_journal_uuid[16];
 u_int32_t e2fs_journal_ino;
 u_int32_t e2fs_journal_dev;
 u_int32_t e2fs_last_orphan;
 u_int32_t e2fs_hash_seed[4];
 u_int8_t e2fs_def_hash_version;
 u_int8_t e2fs_journal_backup_type;
 u_int16_t e2fs_gdesc_size;
 u_int32_t e2fs_default_mount_opts;
 u_int32_t e2fs_first_meta_bg;
 u_int32_t e2fs_mkfs_time;
 u_int32_t e2fs_journal_backup[17];
 u_int32_t reserved2[172];
};
struct m_ext2fs {
 struct ext2fs e2fs;
 u_char e2fs_fsmnt[512];
 int8_t e2fs_ronly;
 int8_t e2fs_fmod;
 int32_t e2fs_fsize;
 int32_t e2fs_bsize;
 int32_t e2fs_bshift;
 int32_t e2fs_bmask;
 int64_t e2fs_qbmask;
 int32_t e2fs_fsbtodb;
 int32_t e2fs_ncg;
 int32_t e2fs_ngdb;
 int32_t e2fs_ipb;
 int32_t e2fs_itpg;
 off_t e2fs_maxfilesize;
 struct ext2_gd *e2fs_gd;
};
static inline int
e2fs_overflow(struct m_ext2fs *fs, off_t lower, off_t value)
{
 return (value < lower || value > fs->e2fs_maxfilesize);
}
struct ext2_gd {
 u_int32_t ext2bgd_b_bitmap;
 u_int32_t ext2bgd_i_bitmap;
 u_int32_t ext2bgd_i_tables;
 u_int16_t ext2bgd_nbfree;
 u_int16_t ext2bgd_nifree;
 u_int16_t ext2bgd_ndirs;
 u_int16_t reserved;
 u_int32_t reserved2[3];
};
static __inline__ int cg_has_sb(int) __attribute__((__unused__));
static __inline int
cg_has_sb(i)
 int i;
{
 int a3 ,a5 , a7;
 if (i == 0 || i == 1)
  return 1;
 for (a3 = 3, a5 = 5, a7 = 7;
     a3 <= i || a5 <= i || a7 <= i;
     a3 *= 3, a5 *= 5, a7 *= 7)
  if (i == a3 || i == a5 || i == a7)
   return 1;
 return 0;
}
void e2fs_sb_bswap(struct ext2fs *, struct ext2fs *);
void e2fs_cg_bswap(struct ext2_gd *, struct ext2_gd *, int);
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
struct stat {
 mode_t st_mode;
 dev_t st_dev;
 ino_t st_ino;
 nlink_t st_nlink;
 uid_t st_uid;
 gid_t st_gid;
 dev_t st_rdev;
 struct timespec st_atim;
 struct timespec st_mtim;
 struct timespec st_ctim;
 off_t st_size;
 blkcnt_t st_blocks;
 blksize_t st_blksize;
 u_int32_t st_flags;
 u_int32_t st_gen;
 struct timespec __st_birthtim;
};
typedef u_int32_t ufsino_t;
struct ufs1_dinode {
 u_int16_t di_mode;
 int16_t di_nlink;
 union {
  u_int16_t oldids[2];
  u_int32_t inumber;
 } di_u;
 u_int64_t di_size;
 int32_t di_atime;
 int32_t di_atimensec;
 int32_t di_mtime;
 int32_t di_mtimensec;
 int32_t di_ctime;
 int32_t di_ctimensec;
 int32_t di_db[12];
 int32_t di_ib[3];
 u_int32_t di_flags;
 int32_t di_blocks;
 int32_t di_gen;
 u_int32_t di_uid;
 u_int32_t di_gid;
 int32_t di_spare[2];
};
struct ufs2_dinode {
 u_int16_t di_mode;
 int16_t di_nlink;
 u_int32_t di_uid;
 u_int32_t di_gid;
 u_int32_t di_blksize;
 u_int64_t di_size;
 u_int64_t di_blocks;
 int64_t di_atime;
 int64_t di_mtime;
 int64_t di_ctime;
 int64_t di_birthtime;
 int32_t di_mtimensec;
 int32_t di_atimensec;
 int32_t di_ctimensec;
 int32_t di_birthnsec;
 int32_t di_gen;
 u_int32_t di_kernflags;
 u_int32_t di_flags;
 int32_t di_extsize;
 int64_t di_extb[2];
 int64_t di_db[12];
 int64_t di_ib[3];
 int64_t di_spare[3];
};
struct ext2fs_dinode {
 u_int16_t e2di_mode;
 u_int16_t e2di_uid_low;
 u_int32_t e2di_size;
 u_int32_t e2di_atime;
 u_int32_t e2di_ctime;
 u_int32_t e2di_mtime;
 u_int32_t e2di_dtime;
 u_int16_t e2di_gid_low;
 u_int16_t e2di_nlink;
 u_int32_t e2di_nblock;
 u_int32_t e2di_flags;
 u_int32_t e2di_version_lo;
 u_int32_t e2di_blocks[12 +3];
 u_int32_t e2di_gen;
 u_int32_t e2di_facl;
 u_int32_t e2di_size_hi;
 u_int32_t e2di_faddr;
 u_int16_t e2di_nblock_hi;
 u_int16_t e2di_facl_hi;
 u_int16_t e2di_uid_high;
 u_int16_t e2di_gid_high;
 u_int16_t e2di_chksum_lo;
 u_int16_t e2di__reserved;
 u_int16_t e2di_isize;
 u_int16_t e2di_chksum_hi;
 u_int32_t e2di_x_ctime;
 u_int32_t e2di_x_mtime;
 u_int32_t e2di_x_atime;
 u_int32_t e2di_crtime;
 u_int32_t e2di_x_crtime;
 u_int32_t e2di_version_hi;
};
struct m_ext2fs;
void e2fs_i_bswap(struct m_ext2fs *, struct ext2fs_dinode *, struct ext2fs_dinode *);
void
e2fs_sb_bswap(struct ext2fs *old, struct ext2fs *new)
{
 __builtin_memcpy((new), (old), (sizeof(struct ext2fs)));
 new->e2fs_icount = (__uint32_t)(__builtin_constant_p(old->e2fs_icount) ? (__uint32_t)(((__uint32_t)(old->e2fs_icount) & 0xff) << 24 | ((__uint32_t)(old->e2fs_icount) & 0xff00) << 8 | ((__uint32_t)(old->e2fs_icount) & 0xff0000) >> 8 | ((__uint32_t)(old->e2fs_icount) & 0xff000000) >> 24) : __swap32md(old->e2fs_icount));
 new->e2fs_bcount = (__uint32_t)(__builtin_constant_p(old->e2fs_bcount) ? (__uint32_t)(((__uint32_t)(old->e2fs_bcount) & 0xff) << 24 | ((__uint32_t)(old->e2fs_bcount) & 0xff00) << 8 | ((__uint32_t)(old->e2fs_bcount) & 0xff0000) >> 8 | ((__uint32_t)(old->e2fs_bcount) & 0xff000000) >> 24) : __swap32md(old->e2fs_bcount));
 new->e2fs_rbcount = (__uint32_t)(__builtin_constant_p(old->e2fs_rbcount) ? (__uint32_t)(((__uint32_t)(old->e2fs_rbcount) & 0xff) << 24 | ((__uint32_t)(old->e2fs_rbcount) & 0xff00) << 8 | ((__uint32_t)(old->e2fs_rbcount) & 0xff0000) >> 8 | ((__uint32_t)(old->e2fs_rbcount) & 0xff000000) >> 24) : __swap32md(old->e2fs_rbcount));
 new->e2fs_fbcount = (__uint32_t)(__builtin_constant_p(old->e2fs_fbcount) ? (__uint32_t)(((__uint32_t)(old->e2fs_fbcount) & 0xff) << 24 | ((__uint32_t)(old->e2fs_fbcount) & 0xff00) << 8 | ((__uint32_t)(old->e2fs_fbcount) & 0xff0000) >> 8 | ((__uint32_t)(old->e2fs_fbcount) & 0xff000000) >> 24) : __swap32md(old->e2fs_fbcount));
 new->e2fs_ficount = (__uint32_t)(__builtin_constant_p(old->e2fs_ficount) ? (__uint32_t)(((__uint32_t)(old->e2fs_ficount) & 0xff) << 24 | ((__uint32_t)(old->e2fs_ficount) & 0xff00) << 8 | ((__uint32_t)(old->e2fs_ficount) & 0xff0000) >> 8 | ((__uint32_t)(old->e2fs_ficount) & 0xff000000) >> 24) : __swap32md(old->e2fs_ficount));
 new->e2fs_first_dblock = (__uint32_t)(__builtin_constant_p(old->e2fs_first_dblock) ? (__uint32_t)(((__uint32_t)(old->e2fs_first_dblock) & 0xff) << 24 | ((__uint32_t)(old->e2fs_first_dblock) & 0xff00) << 8 | ((__uint32_t)(old->e2fs_first_dblock) & 0xff0000) >> 8 | ((__uint32_t)(old->e2fs_first_dblock) & 0xff000000) >> 24) : __swap32md(old->e2fs_first_dblock));
 new->e2fs_log_bsize = (__uint32_t)(__builtin_constant_p(old->e2fs_log_bsize) ? (__uint32_t)(((__uint32_t)(old->e2fs_log_bsize) & 0xff) << 24 | ((__uint32_t)(old->e2fs_log_bsize) & 0xff00) << 8 | ((__uint32_t)(old->e2fs_log_bsize) & 0xff0000) >> 8 | ((__uint32_t)(old->e2fs_log_bsize) & 0xff000000) >> 24) : __swap32md(old->e2fs_log_bsize));
 new->e2fs_log_fsize = (__uint32_t)(__builtin_constant_p(old->e2fs_log_fsize) ? (__uint32_t)(((__uint32_t)(old->e2fs_log_fsize) & 0xff) << 24 | ((__uint32_t)(old->e2fs_log_fsize) & 0xff00) << 8 | ((__uint32_t)(old->e2fs_log_fsize) & 0xff0000) >> 8 | ((__uint32_t)(old->e2fs_log_fsize) & 0xff000000) >> 24) : __swap32md(old->e2fs_log_fsize));
 new->e2fs_bpg = (__uint32_t)(__builtin_constant_p(old->e2fs_bpg) ? (__uint32_t)(((__uint32_t)(old->e2fs_bpg) & 0xff) << 24 | ((__uint32_t)(old->e2fs_bpg) & 0xff00) << 8 | ((__uint32_t)(old->e2fs_bpg) & 0xff0000) >> 8 | ((__uint32_t)(old->e2fs_bpg) & 0xff000000) >> 24) : __swap32md(old->e2fs_bpg));
 new->e2fs_fpg = (__uint32_t)(__builtin_constant_p(old->e2fs_fpg) ? (__uint32_t)(((__uint32_t)(old->e2fs_fpg) & 0xff) << 24 | ((__uint32_t)(old->e2fs_fpg) & 0xff00) << 8 | ((__uint32_t)(old->e2fs_fpg) & 0xff0000) >> 8 | ((__uint32_t)(old->e2fs_fpg) & 0xff000000) >> 24) : __swap32md(old->e2fs_fpg));
 new->e2fs_ipg = (__uint32_t)(__builtin_constant_p(old->e2fs_ipg) ? (__uint32_t)(((__uint32_t)(old->e2fs_ipg) & 0xff) << 24 | ((__uint32_t)(old->e2fs_ipg) & 0xff00) << 8 | ((__uint32_t)(old->e2fs_ipg) & 0xff0000) >> 8 | ((__uint32_t)(old->e2fs_ipg) & 0xff000000) >> 24) : __swap32md(old->e2fs_ipg));
 new->e2fs_mtime = (__uint32_t)(__builtin_constant_p(old->e2fs_mtime) ? (__uint32_t)(((__uint32_t)(old->e2fs_mtime) & 0xff) << 24 | ((__uint32_t)(old->e2fs_mtime) & 0xff00) << 8 | ((__uint32_t)(old->e2fs_mtime) & 0xff0000) >> 8 | ((__uint32_t)(old->e2fs_mtime) & 0xff000000) >> 24) : __swap32md(old->e2fs_mtime));
 new->e2fs_wtime = (__uint32_t)(__builtin_constant_p(old->e2fs_wtime) ? (__uint32_t)(((__uint32_t)(old->e2fs_wtime) & 0xff) << 24 | ((__uint32_t)(old->e2fs_wtime) & 0xff00) << 8 | ((__uint32_t)(old->e2fs_wtime) & 0xff0000) >> 8 | ((__uint32_t)(old->e2fs_wtime) & 0xff000000) >> 24) : __swap32md(old->e2fs_wtime));
 new->e2fs_mnt_count = (__uint16_t)(__builtin_constant_p(old->e2fs_mnt_count) ? (__uint16_t)(((__uint16_t)(old->e2fs_mnt_count) & 0xffU) << 8 | ((__uint16_t)(old->e2fs_mnt_count) & 0xff00U) >> 8) : __swap16md(old->e2fs_mnt_count));
 new->e2fs_max_mnt_count = (__uint16_t)(__builtin_constant_p(old->e2fs_max_mnt_count) ? (__uint16_t)(((__uint16_t)(old->e2fs_max_mnt_count) & 0xffU) << 8 | ((__uint16_t)(old->e2fs_max_mnt_count) & 0xff00U) >> 8) : __swap16md(old->e2fs_max_mnt_count));
 new->e2fs_magic = (__uint16_t)(__builtin_constant_p(old->e2fs_magic) ? (__uint16_t)(((__uint16_t)(old->e2fs_magic) & 0xffU) << 8 | ((__uint16_t)(old->e2fs_magic) & 0xff00U) >> 8) : __swap16md(old->e2fs_magic));
 new->e2fs_state = (__uint16_t)(__builtin_constant_p(old->e2fs_state) ? (__uint16_t)(((__uint16_t)(old->e2fs_state) & 0xffU) << 8 | ((__uint16_t)(old->e2fs_state) & 0xff00U) >> 8) : __swap16md(old->e2fs_state));
 new->e2fs_beh = (__uint16_t)(__builtin_constant_p(old->e2fs_beh) ? (__uint16_t)(((__uint16_t)(old->e2fs_beh) & 0xffU) << 8 | ((__uint16_t)(old->e2fs_beh) & 0xff00U) >> 8) : __swap16md(old->e2fs_beh));
 new->e2fs_minrev = (__uint16_t)(__builtin_constant_p(old->e2fs_minrev) ? (__uint16_t)(((__uint16_t)(old->e2fs_minrev) & 0xffU) << 8 | ((__uint16_t)(old->e2fs_minrev) & 0xff00U) >> 8) : __swap16md(old->e2fs_minrev));
 new->e2fs_lastfsck = (__uint32_t)(__builtin_constant_p(old->e2fs_lastfsck) ? (__uint32_t)(((__uint32_t)(old->e2fs_lastfsck) & 0xff) << 24 | ((__uint32_t)(old->e2fs_lastfsck) & 0xff00) << 8 | ((__uint32_t)(old->e2fs_lastfsck) & 0xff0000) >> 8 | ((__uint32_t)(old->e2fs_lastfsck) & 0xff000000) >> 24) : __swap32md(old->e2fs_lastfsck));
 new->e2fs_fsckintv = (__uint32_t)(__builtin_constant_p(old->e2fs_fsckintv) ? (__uint32_t)(((__uint32_t)(old->e2fs_fsckintv) & 0xff) << 24 | ((__uint32_t)(old->e2fs_fsckintv) & 0xff00) << 8 | ((__uint32_t)(old->e2fs_fsckintv) & 0xff0000) >> 8 | ((__uint32_t)(old->e2fs_fsckintv) & 0xff000000) >> 24) : __swap32md(old->e2fs_fsckintv));
 new->e2fs_creator = (__uint32_t)(__builtin_constant_p(old->e2fs_creator) ? (__uint32_t)(((__uint32_t)(old->e2fs_creator) & 0xff) << 24 | ((__uint32_t)(old->e2fs_creator) & 0xff00) << 8 | ((__uint32_t)(old->e2fs_creator) & 0xff0000) >> 8 | ((__uint32_t)(old->e2fs_creator) & 0xff000000) >> 24) : __swap32md(old->e2fs_creator));
 new->e2fs_rev = (__uint32_t)(__builtin_constant_p(old->e2fs_rev) ? (__uint32_t)(((__uint32_t)(old->e2fs_rev) & 0xff) << 24 | ((__uint32_t)(old->e2fs_rev) & 0xff00) << 8 | ((__uint32_t)(old->e2fs_rev) & 0xff0000) >> 8 | ((__uint32_t)(old->e2fs_rev) & 0xff000000) >> 24) : __swap32md(old->e2fs_rev));
 new->e2fs_ruid = (__uint16_t)(__builtin_constant_p(old->e2fs_ruid) ? (__uint16_t)(((__uint16_t)(old->e2fs_ruid) & 0xffU) << 8 | ((__uint16_t)(old->e2fs_ruid) & 0xff00U) >> 8) : __swap16md(old->e2fs_ruid));
 new->e2fs_rgid = (__uint16_t)(__builtin_constant_p(old->e2fs_rgid) ? (__uint16_t)(((__uint16_t)(old->e2fs_rgid) & 0xffU) << 8 | ((__uint16_t)(old->e2fs_rgid) & 0xff00U) >> 8) : __swap16md(old->e2fs_rgid));
 new->e2fs_first_ino = (__uint32_t)(__builtin_constant_p(old->e2fs_first_ino) ? (__uint32_t)(((__uint32_t)(old->e2fs_first_ino) & 0xff) << 24 | ((__uint32_t)(old->e2fs_first_ino) & 0xff00) << 8 | ((__uint32_t)(old->e2fs_first_ino) & 0xff0000) >> 8 | ((__uint32_t)(old->e2fs_first_ino) & 0xff000000) >> 24) : __swap32md(old->e2fs_first_ino));
 new->e2fs_inode_size = (__uint16_t)(__builtin_constant_p(old->e2fs_inode_size) ? (__uint16_t)(((__uint16_t)(old->e2fs_inode_size) & 0xffU) << 8 | ((__uint16_t)(old->e2fs_inode_size) & 0xff00U) >> 8) : __swap16md(old->e2fs_inode_size));
 new->e2fs_block_group_nr = (__uint16_t)(__builtin_constant_p(old->e2fs_block_group_nr) ? (__uint16_t)(((__uint16_t)(old->e2fs_block_group_nr) & 0xffU) << 8 | ((__uint16_t)(old->e2fs_block_group_nr) & 0xff00U) >> 8) : __swap16md(old->e2fs_block_group_nr));
 new->e2fs_features_compat = (__uint32_t)(__builtin_constant_p(old->e2fs_features_compat) ? (__uint32_t)(((__uint32_t)(old->e2fs_features_compat) & 0xff) << 24 | ((__uint32_t)(old->e2fs_features_compat) & 0xff00) << 8 | ((__uint32_t)(old->e2fs_features_compat) & 0xff0000) >> 8 | ((__uint32_t)(old->e2fs_features_compat) & 0xff000000) >> 24) : __swap32md(old->e2fs_features_compat));
 new->e2fs_features_incompat = (__uint32_t)(__builtin_constant_p(old->e2fs_features_incompat) ? (__uint32_t)(((__uint32_t)(old->e2fs_features_incompat) & 0xff) << 24 | ((__uint32_t)(old->e2fs_features_incompat) & 0xff00) << 8 | ((__uint32_t)(old->e2fs_features_incompat) & 0xff0000) >> 8 | ((__uint32_t)(old->e2fs_features_incompat) & 0xff000000) >> 24) : __swap32md(old->e2fs_features_incompat));
 new->e2fs_features_rocompat = (__uint32_t)(__builtin_constant_p(old->e2fs_features_rocompat) ? (__uint32_t)(((__uint32_t)(old->e2fs_features_rocompat) & 0xff) << 24 | ((__uint32_t)(old->e2fs_features_rocompat) & 0xff00) << 8 | ((__uint32_t)(old->e2fs_features_rocompat) & 0xff0000) >> 8 | ((__uint32_t)(old->e2fs_features_rocompat) & 0xff000000) >> 24) : __swap32md(old->e2fs_features_rocompat));
 new->e2fs_algo = (__uint32_t)(__builtin_constant_p(old->e2fs_algo) ? (__uint32_t)(((__uint32_t)(old->e2fs_algo) & 0xff) << 24 | ((__uint32_t)(old->e2fs_algo) & 0xff00) << 8 | ((__uint32_t)(old->e2fs_algo) & 0xff0000) >> 8 | ((__uint32_t)(old->e2fs_algo) & 0xff000000) >> 24) : __swap32md(old->e2fs_algo));
 new->e2fs_journal_ino = (__uint32_t)(__builtin_constant_p(old->e2fs_journal_ino) ? (__uint32_t)(((__uint32_t)(old->e2fs_journal_ino) & 0xff) << 24 | ((__uint32_t)(old->e2fs_journal_ino) & 0xff00) << 8 | ((__uint32_t)(old->e2fs_journal_ino) & 0xff0000) >> 8 | ((__uint32_t)(old->e2fs_journal_ino) & 0xff000000) >> 24) : __swap32md(old->e2fs_journal_ino));
 new->e2fs_journal_dev = (__uint32_t)(__builtin_constant_p(old->e2fs_journal_dev) ? (__uint32_t)(((__uint32_t)(old->e2fs_journal_dev) & 0xff) << 24 | ((__uint32_t)(old->e2fs_journal_dev) & 0xff00) << 8 | ((__uint32_t)(old->e2fs_journal_dev) & 0xff0000) >> 8 | ((__uint32_t)(old->e2fs_journal_dev) & 0xff000000) >> 24) : __swap32md(old->e2fs_journal_dev));
 new->e2fs_last_orphan = (__uint32_t)(__builtin_constant_p(old->e2fs_last_orphan) ? (__uint32_t)(((__uint32_t)(old->e2fs_last_orphan) & 0xff) << 24 | ((__uint32_t)(old->e2fs_last_orphan) & 0xff00) << 8 | ((__uint32_t)(old->e2fs_last_orphan) & 0xff0000) >> 8 | ((__uint32_t)(old->e2fs_last_orphan) & 0xff000000) >> 24) : __swap32md(old->e2fs_last_orphan));
 new->e2fs_gdesc_size = (__uint16_t)(__builtin_constant_p(old->e2fs_gdesc_size) ? (__uint16_t)(((__uint16_t)(old->e2fs_gdesc_size) & 0xffU) << 8 | ((__uint16_t)(old->e2fs_gdesc_size) & 0xff00U) >> 8) : __swap16md(old->e2fs_gdesc_size));
 new->e2fs_default_mount_opts = (__uint32_t)(__builtin_constant_p(old->e2fs_default_mount_opts) ? (__uint32_t)(((__uint32_t)(old->e2fs_default_mount_opts) & 0xff) << 24 | ((__uint32_t)(old->e2fs_default_mount_opts) & 0xff00) << 8 | ((__uint32_t)(old->e2fs_default_mount_opts) & 0xff0000) >> 8 | ((__uint32_t)(old->e2fs_default_mount_opts) & 0xff000000) >> 24) : __swap32md(old->e2fs_default_mount_opts));
 new->e2fs_first_meta_bg = (__uint32_t)(__builtin_constant_p(old->e2fs_first_meta_bg) ? (__uint32_t)(((__uint32_t)(old->e2fs_first_meta_bg) & 0xff) << 24 | ((__uint32_t)(old->e2fs_first_meta_bg) & 0xff00) << 8 | ((__uint32_t)(old->e2fs_first_meta_bg) & 0xff0000) >> 8 | ((__uint32_t)(old->e2fs_first_meta_bg) & 0xff000000) >> 24) : __swap32md(old->e2fs_first_meta_bg));
 new->e2fs_mkfs_time = (__uint32_t)(__builtin_constant_p(old->e2fs_mkfs_time) ? (__uint32_t)(((__uint32_t)(old->e2fs_mkfs_time) & 0xff) << 24 | ((__uint32_t)(old->e2fs_mkfs_time) & 0xff00) << 8 | ((__uint32_t)(old->e2fs_mkfs_time) & 0xff0000) >> 8 | ((__uint32_t)(old->e2fs_mkfs_time) & 0xff000000) >> 24) : __swap32md(old->e2fs_mkfs_time));
}
void
e2fs_cg_bswap(struct ext2_gd *old, struct ext2_gd *new, int size)
{
 int i;
 for (i=0; i < (size / sizeof(struct ext2_gd)); i++) {
  new[i].ext2bgd_b_bitmap = (__uint32_t)(__builtin_constant_p(old[i].ext2bgd_b_bitmap) ? (__uint32_t)(((__uint32_t)(old[i].ext2bgd_b_bitmap) & 0xff) << 24 | ((__uint32_t)(old[i].ext2bgd_b_bitmap) & 0xff00) << 8 | ((__uint32_t)(old[i].ext2bgd_b_bitmap) & 0xff0000) >> 8 | ((__uint32_t)(old[i].ext2bgd_b_bitmap) & 0xff000000) >> 24) : __swap32md(old[i].ext2bgd_b_bitmap));
  new[i].ext2bgd_i_bitmap = (__uint32_t)(__builtin_constant_p(old[i].ext2bgd_i_bitmap) ? (__uint32_t)(((__uint32_t)(old[i].ext2bgd_i_bitmap) & 0xff) << 24 | ((__uint32_t)(old[i].ext2bgd_i_bitmap) & 0xff00) << 8 | ((__uint32_t)(old[i].ext2bgd_i_bitmap) & 0xff0000) >> 8 | ((__uint32_t)(old[i].ext2bgd_i_bitmap) & 0xff000000) >> 24) : __swap32md(old[i].ext2bgd_i_bitmap));
  new[i].ext2bgd_i_tables = (__uint32_t)(__builtin_constant_p(old[i].ext2bgd_i_tables) ? (__uint32_t)(((__uint32_t)(old[i].ext2bgd_i_tables) & 0xff) << 24 | ((__uint32_t)(old[i].ext2bgd_i_tables) & 0xff00) << 8 | ((__uint32_t)(old[i].ext2bgd_i_tables) & 0xff0000) >> 8 | ((__uint32_t)(old[i].ext2bgd_i_tables) & 0xff000000) >> 24) : __swap32md(old[i].ext2bgd_i_tables));
  new[i].ext2bgd_nbfree = (__uint16_t)(__builtin_constant_p(old[i].ext2bgd_nbfree) ? (__uint16_t)(((__uint16_t)(old[i].ext2bgd_nbfree) & 0xffU) << 8 | ((__uint16_t)(old[i].ext2bgd_nbfree) & 0xff00U) >> 8) : __swap16md(old[i].ext2bgd_nbfree));
  new[i].ext2bgd_nifree = (__uint16_t)(__builtin_constant_p(old[i].ext2bgd_nifree) ? (__uint16_t)(((__uint16_t)(old[i].ext2bgd_nifree) & 0xffU) << 8 | ((__uint16_t)(old[i].ext2bgd_nifree) & 0xff00U) >> 8) : __swap16md(old[i].ext2bgd_nifree));
  new[i].ext2bgd_ndirs = (__uint16_t)(__builtin_constant_p(old[i].ext2bgd_ndirs) ? (__uint16_t)(((__uint16_t)(old[i].ext2bgd_ndirs) & 0xffU) << 8 | ((__uint16_t)(old[i].ext2bgd_ndirs) & 0xff00U) >> 8) : __swap16md(old[i].ext2bgd_ndirs));
 }
}
void
e2fs_i_bswap(struct m_ext2fs *fs, struct ext2fs_dinode *old,
    struct ext2fs_dinode *new)
{
 new->e2di_mode = (__uint16_t)(__builtin_constant_p(old->e2di_mode) ? (__uint16_t)(((__uint16_t)(old->e2di_mode) & 0xffU) << 8 | ((__uint16_t)(old->e2di_mode) & 0xff00U) >> 8) : __swap16md(old->e2di_mode));
 new->e2di_uid_low = (__uint16_t)(__builtin_constant_p(old->e2di_uid_low) ? (__uint16_t)(((__uint16_t)(old->e2di_uid_low) & 0xffU) << 8 | ((__uint16_t)(old->e2di_uid_low) & 0xff00U) >> 8) : __swap16md(old->e2di_uid_low));
 new->e2di_gid_low = (__uint16_t)(__builtin_constant_p(old->e2di_gid_low) ? (__uint16_t)(((__uint16_t)(old->e2di_gid_low) & 0xffU) << 8 | ((__uint16_t)(old->e2di_gid_low) & 0xff00U) >> 8) : __swap16md(old->e2di_gid_low));
 new->e2di_uid_high = (__uint16_t)(__builtin_constant_p(old->e2di_uid_high) ? (__uint16_t)(((__uint16_t)(old->e2di_uid_high) & 0xffU) << 8 | ((__uint16_t)(old->e2di_uid_high) & 0xff00U) >> 8) : __swap16md(old->e2di_uid_high));
 new->e2di_gid_high = (__uint16_t)(__builtin_constant_p(old->e2di_gid_high) ? (__uint16_t)(((__uint16_t)(old->e2di_gid_high) & 0xffU) << 8 | ((__uint16_t)(old->e2di_gid_high) & 0xff00U) >> 8) : __swap16md(old->e2di_gid_high));
 new->e2di_nlink = (__uint16_t)(__builtin_constant_p(old->e2di_nlink) ? (__uint16_t)(((__uint16_t)(old->e2di_nlink) & 0xffU) << 8 | ((__uint16_t)(old->e2di_nlink) & 0xff00U) >> 8) : __swap16md(old->e2di_nlink));
 new->e2di_size = (__uint32_t)(__builtin_constant_p(old->e2di_size) ? (__uint32_t)(((__uint32_t)(old->e2di_size) & 0xff) << 24 | ((__uint32_t)(old->e2di_size) & 0xff00) << 8 | ((__uint32_t)(old->e2di_size) & 0xff0000) >> 8 | ((__uint32_t)(old->e2di_size) & 0xff000000) >> 24) : __swap32md(old->e2di_size));
 new->e2di_atime = (__uint32_t)(__builtin_constant_p(old->e2di_atime) ? (__uint32_t)(((__uint32_t)(old->e2di_atime) & 0xff) << 24 | ((__uint32_t)(old->e2di_atime) & 0xff00) << 8 | ((__uint32_t)(old->e2di_atime) & 0xff0000) >> 8 | ((__uint32_t)(old->e2di_atime) & 0xff000000) >> 24) : __swap32md(old->e2di_atime));
 new->e2di_ctime = (__uint32_t)(__builtin_constant_p(old->e2di_ctime) ? (__uint32_t)(((__uint32_t)(old->e2di_ctime) & 0xff) << 24 | ((__uint32_t)(old->e2di_ctime) & 0xff00) << 8 | ((__uint32_t)(old->e2di_ctime) & 0xff0000) >> 8 | ((__uint32_t)(old->e2di_ctime) & 0xff000000) >> 24) : __swap32md(old->e2di_ctime));
 new->e2di_mtime = (__uint32_t)(__builtin_constant_p(old->e2di_mtime) ? (__uint32_t)(((__uint32_t)(old->e2di_mtime) & 0xff) << 24 | ((__uint32_t)(old->e2di_mtime) & 0xff00) << 8 | ((__uint32_t)(old->e2di_mtime) & 0xff0000) >> 8 | ((__uint32_t)(old->e2di_mtime) & 0xff000000) >> 24) : __swap32md(old->e2di_mtime));
 new->e2di_dtime = (__uint32_t)(__builtin_constant_p(old->e2di_dtime) ? (__uint32_t)(((__uint32_t)(old->e2di_dtime) & 0xff) << 24 | ((__uint32_t)(old->e2di_dtime) & 0xff00) << 8 | ((__uint32_t)(old->e2di_dtime) & 0xff0000) >> 8 | ((__uint32_t)(old->e2di_dtime) & 0xff000000) >> 24) : __swap32md(old->e2di_dtime));
 new->e2di_nblock = (__uint32_t)(__builtin_constant_p(old->e2di_nblock) ? (__uint32_t)(((__uint32_t)(old->e2di_nblock) & 0xff) << 24 | ((__uint32_t)(old->e2di_nblock) & 0xff00) << 8 | ((__uint32_t)(old->e2di_nblock) & 0xff0000) >> 8 | ((__uint32_t)(old->e2di_nblock) & 0xff000000) >> 24) : __swap32md(old->e2di_nblock));
 new->e2di_flags = (__uint32_t)(__builtin_constant_p(old->e2di_flags) ? (__uint32_t)(((__uint32_t)(old->e2di_flags) & 0xff) << 24 | ((__uint32_t)(old->e2di_flags) & 0xff00) << 8 | ((__uint32_t)(old->e2di_flags) & 0xff0000) >> 8 | ((__uint32_t)(old->e2di_flags) & 0xff000000) >> 24) : __swap32md(old->e2di_flags));
 new->e2di_gen = (__uint32_t)(__builtin_constant_p(old->e2di_gen) ? (__uint32_t)(((__uint32_t)(old->e2di_gen) & 0xff) << 24 | ((__uint32_t)(old->e2di_gen) & 0xff00) << 8 | ((__uint32_t)(old->e2di_gen) & 0xff0000) >> 8 | ((__uint32_t)(old->e2di_gen) & 0xff000000) >> 24) : __swap32md(old->e2di_gen));
 new->e2di_facl = (__uint32_t)(__builtin_constant_p(old->e2di_facl) ? (__uint32_t)(((__uint32_t)(old->e2di_facl) & 0xff) << 24 | ((__uint32_t)(old->e2di_facl) & 0xff00) << 8 | ((__uint32_t)(old->e2di_facl) & 0xff0000) >> 8 | ((__uint32_t)(old->e2di_facl) & 0xff000000) >> 24) : __swap32md(old->e2di_facl));
 new->e2di_size_hi = (__uint32_t)(__builtin_constant_p(old->e2di_size_hi) ? (__uint32_t)(((__uint32_t)(old->e2di_size_hi) & 0xff) << 24 | ((__uint32_t)(old->e2di_size_hi) & 0xff00) << 8 | ((__uint32_t)(old->e2di_size_hi) & 0xff0000) >> 8 | ((__uint32_t)(old->e2di_size_hi) & 0xff000000) >> 24) : __swap32md(old->e2di_size_hi));
 new->e2di_faddr = (__uint32_t)(__builtin_constant_p(old->e2di_faddr) ? (__uint32_t)(((__uint32_t)(old->e2di_faddr) & 0xff) << 24 | ((__uint32_t)(old->e2di_faddr) & 0xff00) << 8 | ((__uint32_t)(old->e2di_faddr) & 0xff0000) >> 8 | ((__uint32_t)(old->e2di_faddr) & 0xff000000) >> 24) : __swap32md(old->e2di_faddr));
 new->e2di_nblock_hi = (__uint16_t)(__builtin_constant_p(old->e2di_nblock_hi) ? (__uint16_t)(((__uint16_t)(old->e2di_nblock_hi) & 0xffU) << 8 | ((__uint16_t)(old->e2di_nblock_hi) & 0xff00U) >> 8) : __swap16md(old->e2di_nblock_hi));
 new->e2di_facl_hi = (__uint16_t)(__builtin_constant_p(old->e2di_facl_hi) ? (__uint16_t)(((__uint16_t)(old->e2di_facl_hi) & 0xffU) << 8 | ((__uint16_t)(old->e2di_facl_hi) & 0xff00U) >> 8) : __swap16md(old->e2di_facl_hi));
 __builtin_memcpy((&new->e2di_blocks[0]), (&old->e2di_blocks[0]), ((12 +3) * sizeof(int)));
 if (((fs)->e2fs.e2fs_rev > 0 ? (fs)->e2fs.e2fs_inode_size : 128) <= 128)
  return;
 new->e2di_isize = (__uint16_t)(__builtin_constant_p(old->e2di_isize) ? (__uint16_t)(((__uint16_t)(old->e2di_isize) & 0xffU) << 8 | ((__uint16_t)(old->e2di_isize) & 0xff00U) >> 8) : __swap16md(old->e2di_isize));
}
