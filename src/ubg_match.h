#pragma once

#include "ubg_config.h"
#include "ubg_ref.h"

typedef struct {
    int start;
    int end;
} ubg_range;

typedef struct {
    int current;
    int next_match;
    ubg_range matches[2];
} ubg_next_data;

int
ubg_next_verse(const ubg_ref *ref, const ubg_config *config, ubg_next_data *next);
