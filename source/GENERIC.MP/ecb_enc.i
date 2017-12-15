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
typedef unsigned char des_cblock[8];
typedef struct des_ks_struct
 {
 union {
  des_cblock cblock;
  int32_t pad[2];
  } ks;
 } des_key_schedule[16];
void des_encrypt2(u_int32_t *data,des_key_schedule ks, int enc);
static const u_int32_t des_SPtrans[8][64]={
{
0x00820200L, 0x00020000L, 0x80800000L, 0x80820200L,
0x00800000L, 0x80020200L, 0x80020000L, 0x80800000L,
0x80020200L, 0x00820200L, 0x00820000L, 0x80000200L,
0x80800200L, 0x00800000L, 0x00000000L, 0x80020000L,
0x00020000L, 0x80000000L, 0x00800200L, 0x00020200L,
0x80820200L, 0x00820000L, 0x80000200L, 0x00800200L,
0x80000000L, 0x00000200L, 0x00020200L, 0x80820000L,
0x00000200L, 0x80800200L, 0x80820000L, 0x00000000L,
0x00000000L, 0x80820200L, 0x00800200L, 0x80020000L,
0x00820200L, 0x00020000L, 0x80000200L, 0x00800200L,
0x80820000L, 0x00000200L, 0x00020200L, 0x80800000L,
0x80020200L, 0x80000000L, 0x80800000L, 0x00820000L,
0x80820200L, 0x00020200L, 0x00820000L, 0x80800200L,
0x00800000L, 0x80000200L, 0x80020000L, 0x00000000L,
0x00020000L, 0x00800000L, 0x80800200L, 0x00820200L,
0x80000000L, 0x80820000L, 0x00000200L, 0x80020200L,
},{
0x10042004L, 0x00000000L, 0x00042000L, 0x10040000L,
0x10000004L, 0x00002004L, 0x10002000L, 0x00042000L,
0x00002000L, 0x10040004L, 0x00000004L, 0x10002000L,
0x00040004L, 0x10042000L, 0x10040000L, 0x00000004L,
0x00040000L, 0x10002004L, 0x10040004L, 0x00002000L,
0x00042004L, 0x10000000L, 0x00000000L, 0x00040004L,
0x10002004L, 0x00042004L, 0x10042000L, 0x10000004L,
0x10000000L, 0x00040000L, 0x00002004L, 0x10042004L,
0x00040004L, 0x10042000L, 0x10002000L, 0x00042004L,
0x10042004L, 0x00040004L, 0x10000004L, 0x00000000L,
0x10000000L, 0x00002004L, 0x00040000L, 0x10040004L,
0x00002000L, 0x10000000L, 0x00042004L, 0x10002004L,
0x10042000L, 0x00002000L, 0x00000000L, 0x10000004L,
0x00000004L, 0x10042004L, 0x00042000L, 0x10040000L,
0x10040004L, 0x00040000L, 0x00002004L, 0x10002000L,
0x10002004L, 0x00000004L, 0x10040000L, 0x00042000L,
},{
0x41000000L, 0x01010040L, 0x00000040L, 0x41000040L,
0x40010000L, 0x01000000L, 0x41000040L, 0x00010040L,
0x01000040L, 0x00010000L, 0x01010000L, 0x40000000L,
0x41010040L, 0x40000040L, 0x40000000L, 0x41010000L,
0x00000000L, 0x40010000L, 0x01010040L, 0x00000040L,
0x40000040L, 0x41010040L, 0x00010000L, 0x41000000L,
0x41010000L, 0x01000040L, 0x40010040L, 0x01010000L,
0x00010040L, 0x00000000L, 0x01000000L, 0x40010040L,
0x01010040L, 0x00000040L, 0x40000000L, 0x00010000L,
0x40000040L, 0x40010000L, 0x01010000L, 0x41000040L,
0x00000000L, 0x01010040L, 0x00010040L, 0x41010000L,
0x40010000L, 0x01000000L, 0x41010040L, 0x40000000L,
0x40010040L, 0x41000000L, 0x01000000L, 0x41010040L,
0x00010000L, 0x01000040L, 0x41000040L, 0x00010040L,
0x01000040L, 0x00000000L, 0x41010000L, 0x40000040L,
0x41000000L, 0x40010040L, 0x00000040L, 0x01010000L,
},{
0x00100402L, 0x04000400L, 0x00000002L, 0x04100402L,
0x00000000L, 0x04100000L, 0x04000402L, 0x00100002L,
0x04100400L, 0x04000002L, 0x04000000L, 0x00000402L,
0x04000002L, 0x00100402L, 0x00100000L, 0x04000000L,
0x04100002L, 0x00100400L, 0x00000400L, 0x00000002L,
0x00100400L, 0x04000402L, 0x04100000L, 0x00000400L,
0x00000402L, 0x00000000L, 0x00100002L, 0x04100400L,
0x04000400L, 0x04100002L, 0x04100402L, 0x00100000L,
0x04100002L, 0x00000402L, 0x00100000L, 0x04000002L,
0x00100400L, 0x04000400L, 0x00000002L, 0x04100000L,
0x04000402L, 0x00000000L, 0x00000400L, 0x00100002L,
0x00000000L, 0x04100002L, 0x04100400L, 0x00000400L,
0x04000000L, 0x04100402L, 0x00100402L, 0x00100000L,
0x04100402L, 0x00000002L, 0x04000400L, 0x00100402L,
0x00100002L, 0x00100400L, 0x04100000L, 0x04000402L,
0x00000402L, 0x04000000L, 0x04000002L, 0x04100400L,
},{
0x02000000L, 0x00004000L, 0x00000100L, 0x02004108L,
0x02004008L, 0x02000100L, 0x00004108L, 0x02004000L,
0x00004000L, 0x00000008L, 0x02000008L, 0x00004100L,
0x02000108L, 0x02004008L, 0x02004100L, 0x00000000L,
0x00004100L, 0x02000000L, 0x00004008L, 0x00000108L,
0x02000100L, 0x00004108L, 0x00000000L, 0x02000008L,
0x00000008L, 0x02000108L, 0x02004108L, 0x00004008L,
0x02004000L, 0x00000100L, 0x00000108L, 0x02004100L,
0x02004100L, 0x02000108L, 0x00004008L, 0x02004000L,
0x00004000L, 0x00000008L, 0x02000008L, 0x02000100L,
0x02000000L, 0x00004100L, 0x02004108L, 0x00000000L,
0x00004108L, 0x02000000L, 0x00000100L, 0x00004008L,
0x02000108L, 0x00000100L, 0x00000000L, 0x02004108L,
0x02004008L, 0x02004100L, 0x00000108L, 0x00004000L,
0x00004100L, 0x02004008L, 0x02000100L, 0x00000108L,
0x00000008L, 0x00004108L, 0x02004000L, 0x02000008L,
},{
0x20000010L, 0x00080010L, 0x00000000L, 0x20080800L,
0x00080010L, 0x00000800L, 0x20000810L, 0x00080000L,
0x00000810L, 0x20080810L, 0x00080800L, 0x20000000L,
0x20000800L, 0x20000010L, 0x20080000L, 0x00080810L,
0x00080000L, 0x20000810L, 0x20080010L, 0x00000000L,
0x00000800L, 0x00000010L, 0x20080800L, 0x20080010L,
0x20080810L, 0x20080000L, 0x20000000L, 0x00000810L,
0x00000010L, 0x00080800L, 0x00080810L, 0x20000800L,
0x00000810L, 0x20000000L, 0x20000800L, 0x00080810L,
0x20080800L, 0x00080010L, 0x00000000L, 0x20000800L,
0x20000000L, 0x00000800L, 0x20080010L, 0x00080000L,
0x00080010L, 0x20080810L, 0x00080800L, 0x00000010L,
0x20080810L, 0x00080800L, 0x00080000L, 0x20000810L,
0x20000010L, 0x20080000L, 0x00080810L, 0x00000000L,
0x00000800L, 0x20000010L, 0x20000810L, 0x20080800L,
0x20080000L, 0x00000810L, 0x00000010L, 0x20080010L,
},{
0x00001000L, 0x00000080L, 0x00400080L, 0x00400001L,
0x00401081L, 0x00001001L, 0x00001080L, 0x00000000L,
0x00400000L, 0x00400081L, 0x00000081L, 0x00401000L,
0x00000001L, 0x00401080L, 0x00401000L, 0x00000081L,
0x00400081L, 0x00001000L, 0x00001001L, 0x00401081L,
0x00000000L, 0x00400080L, 0x00400001L, 0x00001080L,
0x00401001L, 0x00001081L, 0x00401080L, 0x00000001L,
0x00001081L, 0x00401001L, 0x00000080L, 0x00400000L,
0x00001081L, 0x00401000L, 0x00401001L, 0x00000081L,
0x00001000L, 0x00000080L, 0x00400000L, 0x00401001L,
0x00400081L, 0x00001081L, 0x00001080L, 0x00000000L,
0x00000080L, 0x00400001L, 0x00000001L, 0x00400080L,
0x00000000L, 0x00400081L, 0x00400080L, 0x00001080L,
0x00000081L, 0x00001000L, 0x00401081L, 0x00400000L,
0x00401080L, 0x00000001L, 0x00001001L, 0x00401081L,
0x00400001L, 0x00401080L, 0x00401000L, 0x00001001L,
},{
0x08200020L, 0x08208000L, 0x00008020L, 0x00000000L,
0x08008000L, 0x00200020L, 0x08200000L, 0x08208020L,
0x00000020L, 0x08000000L, 0x00208000L, 0x00008020L,
0x00208020L, 0x08008020L, 0x08000020L, 0x08200000L,
0x00008000L, 0x00208020L, 0x00200020L, 0x08008000L,
0x08208020L, 0x08000020L, 0x00000000L, 0x00208000L,
0x08000000L, 0x00200000L, 0x08008020L, 0x08200020L,
0x00200000L, 0x00008000L, 0x08208000L, 0x00000020L,
0x00200000L, 0x00008000L, 0x08000020L, 0x08208020L,
0x00008020L, 0x08000000L, 0x00000000L, 0x00208000L,
0x08200020L, 0x08008020L, 0x08008000L, 0x00200020L,
0x08208000L, 0x00000020L, 0x00200020L, 0x08008000L,
0x08208020L, 0x00200000L, 0x08200000L, 0x08000020L,
0x00208000L, 0x00008020L, 0x08008020L, 0x08200000L,
0x00000020L, 0x08208000L, 0x00208020L, 0x00000000L,
0x08000000L, 0x08200020L, 0x00008000L, 0x00208020L,
}};
void
des_encrypt2(u_int32_t *data, des_key_schedule ks, int encrypt)
{
 register u_int32_t l, r, t, u;
 register int i;
 register u_int32_t *s;
 u = data[0];
 r = data[1];
 l = (r << 1) | (r >> 31);
 r = (u << 1) | (u >> 31);
 l &= 0xffffffffL;
 r &= 0xffffffffL;
 s = (u_int32_t *) ks;
 if (encrypt) {
  for (i = 0; i < 32; i += 4) {
   { u=(r^s[i + 0 ]); t=r^s[i + 0 +1]; t=((t>>4L)+(t<<28L)); l^= des_SPtrans[1][(t )&0x3f]| des_SPtrans[3][(t>> 8L)&0x3f]| des_SPtrans[5][(t>>16L)&0x3f]| des_SPtrans[7][(t>>24L)&0x3f]| des_SPtrans[0][(u )&0x3f]| des_SPtrans[2][(u>> 8L)&0x3f]| des_SPtrans[4][(u>>16L)&0x3f]| des_SPtrans[6][(u>>24L)&0x3f]; };
   { u=(l^s[i + 2 ]); t=l^s[i + 2 +1]; t=((t>>4L)+(t<<28L)); r^= des_SPtrans[1][(t )&0x3f]| des_SPtrans[3][(t>> 8L)&0x3f]| des_SPtrans[5][(t>>16L)&0x3f]| des_SPtrans[7][(t>>24L)&0x3f]| des_SPtrans[0][(u )&0x3f]| des_SPtrans[2][(u>> 8L)&0x3f]| des_SPtrans[4][(u>>16L)&0x3f]| des_SPtrans[6][(u>>24L)&0x3f]; };
  }
 } else {
  for (i = 30; i > 0; i -= 4) {
   { u=(r^s[i - 0 ]); t=r^s[i - 0 +1]; t=((t>>4L)+(t<<28L)); l^= des_SPtrans[1][(t )&0x3f]| des_SPtrans[3][(t>> 8L)&0x3f]| des_SPtrans[5][(t>>16L)&0x3f]| des_SPtrans[7][(t>>24L)&0x3f]| des_SPtrans[0][(u )&0x3f]| des_SPtrans[2][(u>> 8L)&0x3f]| des_SPtrans[4][(u>>16L)&0x3f]| des_SPtrans[6][(u>>24L)&0x3f]; };
   { u=(l^s[i - 2 ]); t=l^s[i - 2 +1]; t=((t>>4L)+(t<<28L)); r^= des_SPtrans[1][(t )&0x3f]| des_SPtrans[3][(t>> 8L)&0x3f]| des_SPtrans[5][(t>>16L)&0x3f]| des_SPtrans[7][(t>>24L)&0x3f]| des_SPtrans[0][(u )&0x3f]| des_SPtrans[2][(u>> 8L)&0x3f]| des_SPtrans[4][(u>>16L)&0x3f]| des_SPtrans[6][(u>>24L)&0x3f]; };
  }
 }
 l = (l >> 1) | (l << 31);
 r = (r >> 1) | (r << 31);
 l &= 0xffffffffL;
 r &= 0xffffffffL;
 data[0] = l;
 data[1] = r;
 l = r = t = u = 0;
}
