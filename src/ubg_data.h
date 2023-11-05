#pragma once

typedef struct {
    int number;
    char *name;
    char *abbr;
} ubg_book;

typedef struct {
    int book;
    int chapter;
    int verse;
    char *text;
} ubg_verse;

extern ubg_verse ubg_verses[];

extern int ubg_verses_length;

extern ubg_book ubg_books[];

extern int ubg_books_length;
