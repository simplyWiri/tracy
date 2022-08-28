add_library(TracyZSTD)
add_library(Tracy::TracyZSTD ALIAS TracyZSTD)

target_sources(TracyZSTD
        PRIVATE
        ${TRACY_DIR}/zstd/common/bits.h
        ${TRACY_DIR}/zstd/common/bitstream.h
        ${TRACY_DIR}/zstd/common/compiler.h
        ${TRACY_DIR}/zstd/common/cpu.h
        ${TRACY_DIR}/zstd/common/debug.c
        ${TRACY_DIR}/zstd/common/debug.h
        ${TRACY_DIR}/zstd/common/entropy_common.c
        ${TRACY_DIR}/zstd/common/error_private.c
        ${TRACY_DIR}/zstd/common/error_private.h
        ${TRACY_DIR}/zstd/common/fse_decompress.c
        ${TRACY_DIR}/zstd/common/fse.h
        ${TRACY_DIR}/zstd/common/huf.h
        ${TRACY_DIR}/zstd/common/mem.h
        ${TRACY_DIR}/zstd/common/pool.c
        ${TRACY_DIR}/zstd/common/pool.h
        ${TRACY_DIR}/zstd/common/portability_macros.h
        ${TRACY_DIR}/zstd/common/threading.c
        ${TRACY_DIR}/zstd/common/threading.h
        ${TRACY_DIR}/zstd/common/xxhash.c
        ${TRACY_DIR}/zstd/common/xxhash.h
        ${TRACY_DIR}/zstd/common/zstd_common.c
        ${TRACY_DIR}/zstd/common/zstd_deps.h
        ${TRACY_DIR}/zstd/common/zstd_internal.h
        ${TRACY_DIR}/zstd/common/zstd_trace.h
        ${TRACY_DIR}/zstd/compress/clevels.h
        ${TRACY_DIR}/zstd/compress/fse_compress.c
        ${TRACY_DIR}/zstd/compress/hist.c
        ${TRACY_DIR}/zstd/compress/hist.h
        ${TRACY_DIR}/zstd/compress/huf_compress.c
        ${TRACY_DIR}/zstd/compress/zstd_compress.c
        ${TRACY_DIR}/zstd/compress/zstd_compress_internal.h
        ${TRACY_DIR}/zstd/compress/zstd_compress_literals.c
        ${TRACY_DIR}/zstd/compress/zstd_compress_literals.h
        ${TRACY_DIR}/zstd/compress/zstd_compress_sequences.c
        ${TRACY_DIR}/zstd/compress/zstd_compress_sequences.h
        ${TRACY_DIR}/zstd/compress/zstd_compress_superblock.c
        ${TRACY_DIR}/zstd/compress/zstd_compress_superblock.h
        ${TRACY_DIR}/zstd/compress/zstd_cwksp.h
        ${TRACY_DIR}/zstd/compress/zstd_double_fast.c
        ${TRACY_DIR}/zstd/compress/zstd_double_fast.h
        ${TRACY_DIR}/zstd/compress/zstd_fast.c
        ${TRACY_DIR}/zstd/compress/zstd_fast.h
        ${TRACY_DIR}/zstd/compress/zstd_lazy.c
        ${TRACY_DIR}/zstd/compress/zstd_lazy.h
        ${TRACY_DIR}/zstd/compress/zstd_ldm.c
        ${TRACY_DIR}/zstd/compress/zstd_ldm_geartab.h
        ${TRACY_DIR}/zstd/compress/zstd_ldm.h
        ${TRACY_DIR}/zstd/compress/zstdmt_compress.c
        ${TRACY_DIR}/zstd/compress/zstdmt_compress.h
        ${TRACY_DIR}/zstd/compress/zstd_opt.c
        ${TRACY_DIR}/zstd/compress/zstd_opt.h
        ${TRACY_DIR}/zstd/decompress/huf_decompress.c
        ${TRACY_DIR}/zstd/decompress/zstd_ddict.c
        ${TRACY_DIR}/zstd/decompress/zstd_ddict.h
        ${TRACY_DIR}/zstd/decompress/zstd_decompress_block.c
        ${TRACY_DIR}/zstd/decompress/zstd_decompress_block.h
        ${TRACY_DIR}/zstd/decompress/zstd_decompress.c
        ${TRACY_DIR}/zstd/decompress/zstd_decompress_internal.h
        ${TRACY_DIR}/zstd/dictBuilder/cover.c
        ${TRACY_DIR}/zstd/dictBuilder/cover.h
        ${TRACY_DIR}/zstd/dictBuilder/divsufsort.c
        ${TRACY_DIR}/zstd/dictBuilder/divsufsort.h
        ${TRACY_DIR}/zstd/dictBuilder/fastcover.c
        ${TRACY_DIR}/zstd/dictBuilder/zdict.c
        ${TRACY_DIR}/zstd/zdict.h
        ${TRACY_DIR}/zstd/zstd_errors.h
        ${TRACY_DIR}/zstd/zstd.h

        # Assembly file
        ${TRACY_DIR}/zstd/decompress/huf_decompress_amd64.S
)

target_include_directories(TracyZSTD
        PUBLIC
        ${TRACY_DIR}/zstd
)

set_target_properties(TracyZSTD
        PROPERTIES
        CXX_STANDARD          17
        CXX_STANDARD_REQUIRED ON
        CXX_EXTENSIONS        OFF
)
set_source_files_properties(
        ${TRACY_DIR}/zstd/decompress/huf_decompress_amd64.S
        PROPERTIES
        LANGUAGE ASM
)