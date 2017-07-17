# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../kern/subr_tree.c"
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../kern/subr_tree.c"
# 44 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../kern/subr_tree.c"
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/tree.h" 1
# 30 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/tree.h"
# 1 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/_null.h" 1
# 31 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../sys/tree.h" 2
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
# 45 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../kern/subr_tree.c" 2

static inline struct rb_entry *
rb_n2e(const struct rb_type *t, void *node)
{
 unsigned long addr = (unsigned long)node;

 return ((struct rb_entry *)(addr + t->t_offset));
}

static inline void *
rb_e2n(const struct rb_type *t, struct rb_entry *rbe)
{
 unsigned long addr = (unsigned long)rbe;

 return ((void *)(addr - t->t_offset));
}
# 69 "/home/bluhm/github/preproc/openbsd/src/sys/arch/sparc64/compile/GENERIC.MP/obj/../../../../../kern/subr_tree.c"
static inline void
rbe_set(struct rb_entry *rbe, struct rb_entry *parent)
{
 (rbe)->rbt_parent = parent;
 (rbe)->rbt_left = (rbe)->rbt_right = ((void *)0);
 (rbe)->rbt_color = 1;
}

static inline void
rbe_set_blackred(struct rb_entry *black, struct rb_entry *red)
{
 (black)->rbt_color = 0;
 (red)->rbt_color = 1;
}

static inline void
rbe_augment(const struct rb_type *t, struct rb_entry *rbe)
{
 (*t->t_augment)(rb_e2n(t, rbe));
}

static inline void
rbe_if_augment(const struct rb_type *t, struct rb_entry *rbe)
{
 if (t->t_augment != ((void *)0))
  rbe_augment(t, rbe);
}

static inline void
rbe_rotate_left(const struct rb_type *t, struct rb_tree *rbt,
    struct rb_entry *rbe)
{
 struct rb_entry *parent;
 struct rb_entry *tmp;

 tmp = (rbe)->rbt_right;
 (rbe)->rbt_right = (tmp)->rbt_left;
 if ((rbe)->rbt_right != ((void *)0))
  ((tmp)->rbt_left)->rbt_parent = rbe;

 parent = (rbe)->rbt_parent;
 (tmp)->rbt_parent = parent;
 if (parent != ((void *)0)) {
  if (rbe == (parent)->rbt_left)
   (parent)->rbt_left = tmp;
  else
   (parent)->rbt_right = tmp;
 } else
  (rbt)->rbt_root = tmp;

 (tmp)->rbt_left = rbe;
 (rbe)->rbt_parent = tmp;

 if (t->t_augment != ((void *)0)) {
  rbe_augment(t, rbe);
  rbe_augment(t, tmp);
  parent = (tmp)->rbt_parent;
  if (parent != ((void *)0))
   rbe_augment(t, parent);
 }
}

static inline void
rbe_rotate_right(const struct rb_type *t, struct rb_tree *rbt,
    struct rb_entry *rbe)
{
 struct rb_entry *parent;
 struct rb_entry *tmp;

 tmp = (rbe)->rbt_left;
 (rbe)->rbt_left = (tmp)->rbt_right;
 if ((rbe)->rbt_left != ((void *)0))
  ((tmp)->rbt_right)->rbt_parent = rbe;

 parent = (rbe)->rbt_parent;
 (tmp)->rbt_parent = parent;
 if (parent != ((void *)0)) {
  if (rbe == (parent)->rbt_left)
   (parent)->rbt_left = tmp;
  else
   (parent)->rbt_right = tmp;
 } else
  (rbt)->rbt_root = tmp;

 (tmp)->rbt_right = rbe;
 (rbe)->rbt_parent = tmp;

 if (t->t_augment != ((void *)0)) {
  rbe_augment(t, rbe);
  rbe_augment(t, tmp);
  parent = (tmp)->rbt_parent;
  if (parent != ((void *)0))
   rbe_augment(t, parent);
 }
}

static inline void
rbe_insert_color(const struct rb_type *t, struct rb_tree *rbt,
    struct rb_entry *rbe)
{
 struct rb_entry *parent, *gparent, *tmp;

 while ((parent = (rbe)->rbt_parent) != ((void *)0) &&
     (parent)->rbt_color == 1) {
  gparent = (parent)->rbt_parent;

  if (parent == (gparent)->rbt_left) {
   tmp = (gparent)->rbt_right;
   if (tmp != ((void *)0) && (tmp)->rbt_color == 1) {
    (tmp)->rbt_color = 0;
    rbe_set_blackred(parent, gparent);
    rbe = gparent;
    continue;
   }

   if ((parent)->rbt_right == rbe) {
    rbe_rotate_left(t, rbt, parent);
    tmp = parent;
    parent = rbe;
    rbe = tmp;
   }

   rbe_set_blackred(parent, gparent);
   rbe_rotate_right(t, rbt, gparent);
  } else {
   tmp = (gparent)->rbt_left;
   if (tmp != ((void *)0) && (tmp)->rbt_color == 1) {
    (tmp)->rbt_color = 0;
    rbe_set_blackred(parent, gparent);
    rbe = gparent;
    continue;
   }

   if ((parent)->rbt_left == rbe) {
    rbe_rotate_right(t, rbt, parent);
    tmp = parent;
    parent = rbe;
    rbe = tmp;
   }

   rbe_set_blackred(parent, gparent);
   rbe_rotate_left(t, rbt, gparent);
  }
 }

 ((rbt)->rbt_root)->rbt_color = 0;
}

static inline void
rbe_remove_color(const struct rb_type *t, struct rb_tree *rbt,
    struct rb_entry *parent, struct rb_entry *rbe)
{
 struct rb_entry *tmp;

 while ((rbe == ((void *)0) || (rbe)->rbt_color == 0) &&
     rbe != (rbt)->rbt_root) {
  if ((parent)->rbt_left == rbe) {
   tmp = (parent)->rbt_right;
   if ((tmp)->rbt_color == 1) {
    rbe_set_blackred(tmp, parent);
    rbe_rotate_left(t, rbt, parent);
    tmp = (parent)->rbt_right;
   }
   if (((tmp)->rbt_left == ((void *)0) ||
        ((tmp)->rbt_left)->rbt_color == 0) &&
       ((tmp)->rbt_right == ((void *)0) ||
        ((tmp)->rbt_right)->rbt_color == 0)) {
    (tmp)->rbt_color = 1;
    rbe = parent;
    parent = (rbe)->rbt_parent;
   } else {
    if ((tmp)->rbt_right == ((void *)0) ||
        ((tmp)->rbt_right)->rbt_color == 0) {
     struct rb_entry *oleft;

     oleft = (tmp)->rbt_left;
     if (oleft != ((void *)0))
      (oleft)->rbt_color = 0;

     (tmp)->rbt_color = 1;
     rbe_rotate_right(t, rbt, tmp);
     tmp = (parent)->rbt_right;
    }

    (tmp)->rbt_color = (parent)->rbt_color;
    (parent)->rbt_color = 0;
    if ((tmp)->rbt_right)
     ((tmp)->rbt_right)->rbt_color = 0;

    rbe_rotate_left(t, rbt, parent);
    rbe = (rbt)->rbt_root;
    break;
   }
  } else {
   tmp = (parent)->rbt_left;
   if ((tmp)->rbt_color == 1) {
    rbe_set_blackred(tmp, parent);
    rbe_rotate_right(t, rbt, parent);
    tmp = (parent)->rbt_left;
   }

   if (((tmp)->rbt_left == ((void *)0) ||
        ((tmp)->rbt_left)->rbt_color == 0) &&
       ((tmp)->rbt_right == ((void *)0) ||
        ((tmp)->rbt_right)->rbt_color == 0)) {
    (tmp)->rbt_color = 1;
    rbe = parent;
    parent = (rbe)->rbt_parent;
   } else {
    if ((tmp)->rbt_left == ((void *)0) ||
        ((tmp)->rbt_left)->rbt_color == 0) {
     struct rb_entry *oright;

     oright = (tmp)->rbt_right;
     if (oright != ((void *)0))
      (oright)->rbt_color = 0;

     (tmp)->rbt_color = 1;
     rbe_rotate_left(t, rbt, tmp);
     tmp = (parent)->rbt_left;
    }

    (tmp)->rbt_color = (parent)->rbt_color;
    (parent)->rbt_color = 0;
    if ((tmp)->rbt_left != ((void *)0))
     ((tmp)->rbt_left)->rbt_color = 0;

    rbe_rotate_right(t, rbt, parent);
    rbe = (rbt)->rbt_root;
    break;
   }
  }
 }

 if (rbe != ((void *)0))
  (rbe)->rbt_color = 0;
}

static inline struct rb_entry *
rbe_remove(const struct rb_type *t, struct rb_tree *rbt, struct rb_entry *rbe)
{
 struct rb_entry *child, *parent, *old = rbe;
 unsigned int color;

 if ((rbe)->rbt_left == ((void *)0))
  child = (rbe)->rbt_right;
 else if ((rbe)->rbt_right == ((void *)0))
  child = (rbe)->rbt_left;
 else {
  struct rb_entry *tmp;

  rbe = (rbe)->rbt_right;
  while ((tmp = (rbe)->rbt_left) != ((void *)0))
   rbe = tmp;

  child = (rbe)->rbt_right;
  parent = (rbe)->rbt_parent;
  color = (rbe)->rbt_color;
  if (child != ((void *)0))
   (child)->rbt_parent = parent;
  if (parent != ((void *)0)) {
   if ((parent)->rbt_left == rbe)
    (parent)->rbt_left = child;
   else
    (parent)->rbt_right = child;

   rbe_if_augment(t, parent);
  } else
   (rbt)->rbt_root = child;
  if ((rbe)->rbt_parent == old)
   parent = rbe;
  *rbe = *old;

  tmp = (old)->rbt_parent;
  if (tmp != ((void *)0)) {
   if ((tmp)->rbt_left == old)
    (tmp)->rbt_left = rbe;
   else
    (tmp)->rbt_right = rbe;

   rbe_if_augment(t, parent);
  } else
   (rbt)->rbt_root = rbe;

  ((old)->rbt_left)->rbt_parent = rbe;
  if ((old)->rbt_right)
   ((old)->rbt_right)->rbt_parent = rbe;

  if (t->t_augment != ((void *)0) && parent != ((void *)0)) {
   tmp = parent;
   do {
    rbe_augment(t, tmp);
    tmp = (tmp)->rbt_parent;
   } while (tmp != ((void *)0));
  }

  goto color;
 }

 parent = (rbe)->rbt_parent;
 color = (rbe)->rbt_color;

 if (child != ((void *)0))
  (child)->rbt_parent = parent;
 if (parent != ((void *)0)) {
  if ((parent)->rbt_left == rbe)
   (parent)->rbt_left = child;
  else
   (parent)->rbt_right = child;

  rbe_if_augment(t, parent);
 } else
  (rbt)->rbt_root = child;
color:
 if (color == 0)
  rbe_remove_color(t, rbt, parent, child);

 return (old);
}

void *
_rb_remove(const struct rb_type *t, struct rb_tree *rbt, void *elm)
{
 struct rb_entry *rbe = rb_n2e(t, elm);
 struct rb_entry *old;

 old = rbe_remove(t, rbt, rbe);

 return (old == ((void *)0) ? ((void *)0) : rb_e2n(t, old));
}

void *
_rb_insert(const struct rb_type *t, struct rb_tree *rbt, void *elm)
{
 struct rb_entry *rbe = rb_n2e(t, elm);
 struct rb_entry *tmp;
 struct rb_entry *parent = ((void *)0);
 void *node;
 int comp = 0;

 tmp = (rbt)->rbt_root;
 while (tmp != ((void *)0)) {
  parent = tmp;

  node = rb_e2n(t, tmp);
  comp = (*t->t_compare)(elm, node);
  if (comp < 0)
   tmp = (tmp)->rbt_left;
  else if (comp > 0)
   tmp = (tmp)->rbt_right;
  else
   return (node);
 }

 rbe_set(rbe, parent);

 if (parent != ((void *)0)) {
  if (comp < 0)
   (parent)->rbt_left = rbe;
  else
   (parent)->rbt_right = rbe;

  rbe_if_augment(t, parent);
 } else
  (rbt)->rbt_root = rbe;

 rbe_insert_color(t, rbt, rbe);

 return (((void *)0));
}


void *
_rb_find(const struct rb_type *t, struct rb_tree *rbt, const void *key)
{
 struct rb_entry *tmp = (rbt)->rbt_root;
 void *node;
 int comp;

 while (tmp != ((void *)0)) {
  node = rb_e2n(t, tmp);
  comp = (*t->t_compare)(key, node);
  if (comp < 0)
   tmp = (tmp)->rbt_left;
  else if (comp > 0)
   tmp = (tmp)->rbt_right;
  else
   return (node);
 }

 return (((void *)0));
}


void *
_rb_nfind(const struct rb_type *t, struct rb_tree *rbt, const void *key)
{
 struct rb_entry *tmp = (rbt)->rbt_root;
 void *node;
 void *res = ((void *)0);
 int comp;

 while (tmp != ((void *)0)) {
  node = rb_e2n(t, tmp);
  comp = (*t->t_compare)(key, node);
  if (comp < 0) {
   res = node;
   tmp = (tmp)->rbt_left;
  } else if (comp > 0)
   tmp = (tmp)->rbt_right;
  else
   return (node);
 }

 return (res);
}

void *
_rb_next(const struct rb_type *t, void *elm)
{
 struct rb_entry *rbe = rb_n2e(t, elm);

 if ((rbe)->rbt_right != ((void *)0)) {
  rbe = (rbe)->rbt_right;
  while ((rbe)->rbt_left != ((void *)0))
   rbe = (rbe)->rbt_left;
 } else {
  if ((rbe)->rbt_parent &&
      (rbe == ((rbe)->rbt_parent)->rbt_left))
   rbe = (rbe)->rbt_parent;
  else {
   while ((rbe)->rbt_parent &&
       (rbe == ((rbe)->rbt_parent)->rbt_right))
    rbe = (rbe)->rbt_parent;
   rbe = (rbe)->rbt_parent;
  }
 }

 return (rbe == ((void *)0) ? ((void *)0) : rb_e2n(t, rbe));
}

void *
_rb_prev(const struct rb_type *t, void *elm)
{
 struct rb_entry *rbe = rb_n2e(t, elm);

 if ((rbe)->rbt_left) {
  rbe = (rbe)->rbt_left;
  while ((rbe)->rbt_right)
   rbe = (rbe)->rbt_right;
 } else {
  if ((rbe)->rbt_parent &&
      (rbe == ((rbe)->rbt_parent)->rbt_right))
   rbe = (rbe)->rbt_parent;
  else {
   while ((rbe)->rbt_parent &&
       (rbe == ((rbe)->rbt_parent)->rbt_left))
    rbe = (rbe)->rbt_parent;
   rbe = (rbe)->rbt_parent;
  }
 }

 return (rbe == ((void *)0) ? ((void *)0) : rb_e2n(t, rbe));
}

void *
_rb_root(const struct rb_type *t, struct rb_tree *rbt)
{
 struct rb_entry *rbe = (rbt)->rbt_root;

 return (rbe == ((void *)0) ? rbe : rb_e2n(t, rbe));
}

void *
_rb_min(const struct rb_type *t, struct rb_tree *rbt)
{
 struct rb_entry *rbe = (rbt)->rbt_root;
 struct rb_entry *parent = ((void *)0);

 while (rbe != ((void *)0)) {
  parent = rbe;
  rbe = (rbe)->rbt_left;
 }

 return (parent == ((void *)0) ? ((void *)0) : rb_e2n(t, parent));
}

void *
_rb_max(const struct rb_type *t, struct rb_tree *rbt)
{
 struct rb_entry *rbe = (rbt)->rbt_root;
 struct rb_entry *parent = ((void *)0);

 while (rbe != ((void *)0)) {
  parent = rbe;
  rbe = (rbe)->rbt_right;
 }

 return (parent == ((void *)0) ? ((void *)0) : rb_e2n(t, parent));
}

void *
_rb_left(const struct rb_type *t, void *node)
{
 struct rb_entry *rbe = rb_n2e(t, node);
 rbe = (rbe)->rbt_left;
 return (rbe == ((void *)0) ? ((void *)0) : rb_e2n(t, rbe));
}

void *
_rb_right(const struct rb_type *t, void *node)
{
 struct rb_entry *rbe = rb_n2e(t, node);
 rbe = (rbe)->rbt_right;
 return (rbe == ((void *)0) ? ((void *)0) : rb_e2n(t, rbe));
}

void *
_rb_parent(const struct rb_type *t, void *node)
{
 struct rb_entry *rbe = rb_n2e(t, node);
 rbe = (rbe)->rbt_parent;
 return (rbe == ((void *)0) ? ((void *)0) : rb_e2n(t, rbe));
}

void
_rb_set_left(const struct rb_type *t, void *node, void *left)
{
 struct rb_entry *rbe = rb_n2e(t, node);
 struct rb_entry *rbl = (left == ((void *)0)) ? ((void *)0) : rb_n2e(t, left);

 (rbe)->rbt_left = rbl;
}

void
_rb_set_right(const struct rb_type *t, void *node, void *right)
{
 struct rb_entry *rbe = rb_n2e(t, node);
 struct rb_entry *rbr = (right == ((void *)0)) ? ((void *)0) : rb_n2e(t, right);

 (rbe)->rbt_right = rbr;
}

void
_rb_set_parent(const struct rb_type *t, void *node, void *parent)
{
 struct rb_entry *rbe = rb_n2e(t, node);
 struct rb_entry *rbp = (parent == ((void *)0)) ? ((void *)0) : rb_n2e(t, parent);

 (rbe)->rbt_parent = rbp;
}

void
_rb_poison(const struct rb_type *t, void *node, unsigned long poison)
{
 struct rb_entry *rbe = rb_n2e(t, node);

 (rbe)->rbt_parent = (rbe)->rbt_left = (rbe)->rbt_right =
     (struct rb_entry *)poison;
}

int
_rb_check(const struct rb_type *t, void *node, unsigned long poison)
{
 struct rb_entry *rbe = rb_n2e(t, node);

 return ((unsigned long)(rbe)->rbt_parent == poison &&
     (unsigned long)(rbe)->rbt_left == poison &&
     (unsigned long)(rbe)->rbt_right == poison);
}
