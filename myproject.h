#ifndef MYPROJECT_H_
#define MYPROJECT_H_

#include "ap_fixed.h"
#include "ap_int.h"
#include "hls_stream.h"

#include "defines3.h"

// Prototype of top level function for C-synthesis
void myproject(
    hls::stream<input_t> &zero_padding2d_input,
    hls::stream<result_t> &layer19_out
);

#endif
