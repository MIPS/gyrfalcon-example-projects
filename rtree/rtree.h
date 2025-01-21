
/*
 * Copyright (C) Igor Sysoev
 * Copyright (C) Nginx, Inc.
 */


#ifndef _RADIX_TREE_H_INCLUDED_
#define _RADIX_TREE_H_INCLUDED_



typedef __uint8_t uint8_t;
typedef __uint16_t uint16_t;
typedef __uint32_t uint32_t;
typedef __uint64_t uint64_t;
typedef unsigned long int   uintptr_t;
typedef intptr_t        int_t;
typedef uintptr_t       uint_t;
typedef intptr_t        flag_t;

#define RADIX_NO_VALUE   (uintptr_t) -1
#define  OK          0
#define  ERROR      -1
#define  AGAIN      -2
#define  BUSY       -3
#define  DONE       -4
#define  DECLINED   -5
#define  ABORT      -6


typedef struct radix_node_s  radix_node_t;

struct radix_node_s {
    radix_node_t  *right;
    radix_node_t  *left;
    radix_node_t  *parent;
    uintptr_t          value;
};


typedef struct {
    radix_node_t  *root;
    radix_node_t  *free;
    char              *start;
    size_t             size;
} radix_tree_t;


radix_tree_t *radix_tree_create( int_t preallocate);

int_t radix32tree_insert(radix_tree_t *tree,
    uint32_t key, uint32_t mask, uintptr_t value);
int_t radix32tree_delete(radix_tree_t *tree,
    uint32_t key, uint32_t mask);
uintptr_t radix32tree_find(radix_tree_t *tree, uint32_t key);

#if (HAVE_INET6)
int_t radix128tree_insert(radix_tree_t *tree,
    u_char *key, u_char *mask, uintptr_t value);
int_t radix128tree_delete(radix_tree_t *tree,
    u_char *key, u_char *mask);
uintptr_t radix128tree_find(radix_tree_t *tree, u_char *key);
#endif

#endif /* _RADIX_TREE_H_INCLUDED_ */
