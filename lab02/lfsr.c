#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include "lfsr.h"

void lfsr_calculate(uint16_t *reg) {
    /* YOUR CODE HERE */
    uint16_t bit = 0, seq = (*reg & 0b101101);
    while(seq) {
        seq &= (seq-1);
        bit++;
    }
    *reg = (*reg >> 1) | ((bit&1) << 15);
}

