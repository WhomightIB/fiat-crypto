/* Autogenerated: 'src/ExtractionOCaml/bedrock2_solinas_reduction' --lang bedrock2 --static --no-wide-int --widen-carry --widen-bytes --split-multiret --no-select --no-field-element-typedefs curve25519_solinas 64 '2^255 - 19' mul square */
/* curve description: curve25519_solinas */
/* machine_wordsize = 64 (from "64") */
/* requested operations: mul, square */
/* s-c = 2^255 - [(1, 19)] (from "2^255 - 19") */
/*  */
/* Computed values: */
/*  */

// Generated from Bedrock code. Avoid editing directly.
#include <stdint.h>
#include <string.h>
#include <assert.h>

#define BR_WORD_MAX UINTPTR_MAX
typedef uintptr_t br_word_t;
typedef intptr_t br_signed_t;

static_assert(sizeof(br_word_t) == sizeof(br_signed_t), "signed size");
static_assert(UINTPTR_MAX <= BR_WORD_MAX, "pointer fits in int");
static_assert(~(br_signed_t)0 == -(br_signed_t)1, "two's complement");

#if __STDC_VERSION__ >= 202311L && __has_include(<stdbit.h>)
  #include <stdbit.h>
  static_assert(__STDC_ENDIAN_NATIVE__ == __STDC_ENDIAN_LITTLE__, "little-endian");
#elif defined(__GNUC__) && defined(__BYTE_ORDER__) && defined(__ORDER_LITTLE_ENDIAN__)
  static_assert(__BYTE_ORDER__ == __ORDER_LITTLE_ENDIAN__, "little-endian");
#elif defined(_MSC_VER) && !defined(__clang__) &&                              \
    (defined(_M_IX86) || defined(_M_X64) || defined(_M_ARM) || defined(_M_ARM64))
  // these MSVC targets are little-endian
#else
  #error "failed to confirm that target is little-endian"
#endif

// "An object shall have its stored value accessed only ... a character type."
static inline br_word_t _br_load1(br_word_t a) {
  return *((uint8_t *)a);
}

static inline br_word_t _br_load2(br_word_t a) {
  uint16_t r = 0;
  memcpy(&r, (void *)a, sizeof(r));
  return r;
}

static inline br_word_t _br_load4(br_word_t a) {
  uint32_t r = 0;
  memcpy(&r, (void *)a, sizeof(r));
  return r;
}

static inline br_word_t _br_load(br_word_t a) {
  br_word_t r = 0;
  memcpy(&r, (void *)a, sizeof(r));
  return r;
}

static inline void _br_store1(br_word_t a, uint8_t v) {
  *((uint8_t *)a) = v;
}

static inline void _br_store2(br_word_t a, uint16_t v) {
  memcpy((void *)a, &v, sizeof(v));
}

static inline void _br_store4(br_word_t a, uint32_t v) {
  memcpy((void *)a, &v, sizeof(v));
}

static inline void _br_store(br_word_t a, br_word_t v) {
  memcpy((void *)a, &v, sizeof(v));
}

static inline br_word_t _br_mulhuu(br_word_t a, br_word_t b) {
  #if BR_WORD_MAX == UINT32_MAX
	  return ((uint64_t)a * b) >> 32;
  #elif BR_WORD_MAX == UINT64_MAX && (defined(__GNUC__) || defined(__clang__))
    return ((unsigned __int128)a * b) >> 64;
  #elif defined(_M_X64)
    uint64_t hi;
    _umul128(a, b, &hi);
    return hi;
  #elif defined(_M_ARM64)
    return __umulh(a, b);
  #else
    // See full_mul.v
    br_word_t hh, lh, hl, low, second_halfword_w_oflow, n, ll, M;
    n = ((((0u-(br_word_t)0x1)>>27)&0x3f)+0x1)>>1;
    M = ((br_word_t)0x1<<n)-0x1;
    ll = (a&M)*(b&M);
    lh = (a&M)*(b>>n);
    hl = (a>>n)*(b&M);
    hh = (a>>n)*(b>>n);
    second_halfword_w_oflow = ((ll>>n)+(lh&M))+(hl&M);
    return ((hh+(lh>>n))+(hl>>n))+(second_halfword_w_oflow>>n);
  #endif
}

static inline br_word_t _br_divu(br_word_t a, br_word_t b) {
  if (!b) return -1;
  return a/b;
}

static inline br_word_t _br_remu(br_word_t a, br_word_t b) {
  if (!b) return a;
  return a%b;
}


/*
 * Input Bounds:
 *   in0: [[0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff]]
 *   in1: [[0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff]]
 * Output Bounds:
 *   out0: [[0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff]]
 */
static
void internal_fiat_curve25519_solinas_mul(br_word_t out0, br_word_t in0, br_word_t in1) {
  br_word_t x3, x2, x1, x7, x6, x5, x0, x4, x14, x35, x41, x33, x42, x12, x43, x45, x46, x25, x20, x40, x49, x44, x50, x15, x51, x53, x54, x47, x56, x17, x22, x37, x59, x48, x60, x23, x61, x63, x64, x52, x65, x18, x66, x68, x69, x55, x70, x10, x71, x73, x74, x57, x76, x9, x28, x58, x79, x62, x80, x26, x81, x83, x84, x67, x85, x21, x86, x88, x89, x72, x90, x13, x91, x93, x94, x75, x96, x77, x30, x39, x99, x78, x100, x31, x101, x103, x104, x82, x105, x29, x106, x108, x109, x87, x110, x24, x111, x113, x114, x92, x115, x16, x116, x118, x119, x95, x120, x8, x121, x123, x124, x97, x36, x98, x127, x102, x128, x34, x129, x131, x132, x107, x133, x32, x134, x136, x137, x112, x138, x27, x139, x141, x142, x117, x143, x19, x144, x146, x147, x122, x148, x11, x149, x151, x152, x125, x153, x150, x145, x140, x158, x126, x163, x130, x164, x156, x165, x167, x168, x135, x169, x154, x170, x172, x173, x155, x160, x38, x176, x162, x177, x161, x178, x180, x181, x166, x182, x159, x183, x185, x186, x171, x187, x157, x188, x190, x191, x174, x192, x193, x175, x195, x179, x197, x184, x199, x189, x201, x202, x203, x204, x194, x205, x196, x198, x200, x206, x207, x208, x209;
  x0 = _br_load(in0+0);
  x1 = _br_load(in0+8);
  x2 = _br_load(in0+16);
  x3 = _br_load(in0+24);
  /*skip*/
  x4 = _br_load(in1+0);
  x5 = _br_load(in1+8);
  x6 = _br_load(in1+16);
  x7 = _br_load(in1+24);
  /*skip*/
  /*skip*/
  x8 = x3*x7;
  x9 = _br_mulhuu(x3, x7);
  x10 = x3*x6;
  x11 = _br_mulhuu(x3, x6);
  x12 = x3*x5;
  x13 = _br_mulhuu(x3, x5);
  x14 = x3*x4;
  x15 = _br_mulhuu(x3, x4);
  x16 = x2*x7;
  x17 = _br_mulhuu(x2, x7);
  x18 = x2*x6;
  x19 = _br_mulhuu(x2, x6);
  x20 = x2*x5;
  x21 = _br_mulhuu(x2, x5);
  x22 = x2*x4;
  x23 = _br_mulhuu(x2, x4);
  x24 = x1*x7;
  x25 = _br_mulhuu(x1, x7);
  x26 = x1*x6;
  x27 = _br_mulhuu(x1, x6);
  x28 = x1*x5;
  x29 = _br_mulhuu(x1, x5);
  x30 = x1*x4;
  x31 = _br_mulhuu(x1, x4);
  x32 = x0*x7;
  x33 = _br_mulhuu(x0, x7);
  x34 = x0*x6;
  x35 = _br_mulhuu(x0, x6);
  x36 = x0*x5;
  x37 = _br_mulhuu(x0, x5);
  x38 = x0*x4;
  x39 = _br_mulhuu(x0, x4);
  x40 = x35+x14;
  x41 = (br_word_t)(x40<x35);
  x42 = x41+x33;
  x43 = (br_word_t)(x42<x33);
  x44 = x42+x12;
  x45 = (br_word_t)(x44<x12);
  x46 = x43+x45;
  x47 = x46+x25;
  x48 = x40+x20;
  x49 = (br_word_t)(x48<x40);
  x50 = x49+x44;
  x51 = (br_word_t)(x50<x44);
  x52 = x50+x15;
  x53 = (br_word_t)(x52<x15);
  x54 = x51+x53;
  x55 = x54+x47;
  x56 = (br_word_t)(x55<x47);
  x57 = x56+x17;
  x58 = x37+x22;
  x59 = (br_word_t)(x58<x37);
  x60 = x59+x48;
  x61 = (br_word_t)(x60<x48);
  x62 = x60+x23;
  x63 = (br_word_t)(x62<x23);
  x64 = x61+x63;
  x65 = x64+x52;
  x66 = (br_word_t)(x65<x52);
  x67 = x65+x18;
  x68 = (br_word_t)(x67<x18);
  x69 = x66+x68;
  x70 = x69+x55;
  x71 = (br_word_t)(x70<x55);
  x72 = x70+x10;
  x73 = (br_word_t)(x72<x10);
  x74 = x71+x73;
  x75 = x74+x57;
  x76 = (br_word_t)(x75<x57);
  x77 = x76+x9;
  x78 = x58+x28;
  x79 = (br_word_t)(x78<x58);
  x80 = x79+x62;
  x81 = (br_word_t)(x80<x62);
  x82 = x80+x26;
  x83 = (br_word_t)(x82<x26);
  x84 = x81+x83;
  x85 = x84+x67;
  x86 = (br_word_t)(x85<x67);
  x87 = x85+x21;
  x88 = (br_word_t)(x87<x21);
  x89 = x86+x88;
  x90 = x89+x72;
  x91 = (br_word_t)(x90<x72);
  x92 = x90+x13;
  x93 = (br_word_t)(x92<x13);
  x94 = x91+x93;
  x95 = x94+x75;
  x96 = (br_word_t)(x95<x75);
  x97 = x96+x77;
  x98 = x39+x30;
  x99 = (br_word_t)(x98<x39);
  x100 = x99+x78;
  x101 = (br_word_t)(x100<x78);
  x102 = x100+x31;
  x103 = (br_word_t)(x102<x31);
  x104 = x101+x103;
  x105 = x104+x82;
  x106 = (br_word_t)(x105<x82);
  x107 = x105+x29;
  x108 = (br_word_t)(x107<x29);
  x109 = x106+x108;
  x110 = x109+x87;
  x111 = (br_word_t)(x110<x87);
  x112 = x110+x24;
  x113 = (br_word_t)(x112<x24);
  x114 = x111+x113;
  x115 = x114+x92;
  x116 = (br_word_t)(x115<x92);
  x117 = x115+x16;
  x118 = (br_word_t)(x117<x16);
  x119 = x116+x118;
  x120 = x119+x95;
  x121 = (br_word_t)(x120<x95);
  x122 = x120+x8;
  x123 = (br_word_t)(x122<x8);
  x124 = x121+x123;
  x125 = x124+x97;
  x126 = x98+x36;
  x127 = (br_word_t)(x126<x98);
  x128 = x127+x102;
  x129 = (br_word_t)(x128<x102);
  x130 = x128+x34;
  x131 = (br_word_t)(x130<x34);
  x132 = x129+x131;
  x133 = x132+x107;
  x134 = (br_word_t)(x133<x107);
  x135 = x133+x32;
  x136 = (br_word_t)(x135<x32);
  x137 = x134+x136;
  x138 = x137+x112;
  x139 = (br_word_t)(x138<x112);
  x140 = x138+x27;
  x141 = (br_word_t)(x140<x27);
  x142 = x139+x141;
  x143 = x142+x117;
  x144 = (br_word_t)(x143<x117);
  x145 = x143+x19;
  x146 = (br_word_t)(x145<x19);
  x147 = x144+x146;
  x148 = x147+x122;
  x149 = (br_word_t)(x148<x122);
  x150 = x148+x11;
  x151 = (br_word_t)(x150<x11);
  x152 = x149+x151;
  x153 = x152+x125;
  x154 = (br_word_t)38*x153;
  x155 = _br_mulhuu((br_word_t)38, x153);
  x156 = (br_word_t)38*x150;
  x157 = _br_mulhuu((br_word_t)38, x150);
  x158 = (br_word_t)38*x145;
  x159 = _br_mulhuu((br_word_t)38, x145);
  x160 = (br_word_t)38*x140;
  x161 = _br_mulhuu((br_word_t)38, x140);
  x162 = x126+x158;
  x163 = (br_word_t)(x162<x126);
  x164 = x163+x130;
  x165 = (br_word_t)(x164<x130);
  x166 = x164+x156;
  x167 = (br_word_t)(x166<x156);
  x168 = x165+x167;
  x169 = x168+x135;
  x170 = (br_word_t)(x169<x135);
  x171 = x169+x154;
  x172 = (br_word_t)(x171<x154);
  x173 = x170+x172;
  x174 = x173+x155;
  x175 = x38+x160;
  x176 = (br_word_t)(x175<x38);
  x177 = x176+x162;
  x178 = (br_word_t)(x177<x162);
  x179 = x177+x161;
  x180 = (br_word_t)(x179<x161);
  x181 = x178+x180;
  x182 = x181+x166;
  x183 = (br_word_t)(x182<x166);
  x184 = x182+x159;
  x185 = (br_word_t)(x184<x159);
  x186 = x183+x185;
  x187 = x186+x171;
  x188 = (br_word_t)(x187<x171);
  x189 = x187+x157;
  x190 = (br_word_t)(x189<x157);
  x191 = x188+x190;
  x192 = x191+x174;
  x193 = (br_word_t)38*x192;
  x194 = x175+x193;
  x195 = (br_word_t)(x194<x175);
  x196 = x195+x179;
  x197 = (br_word_t)(x196<x179);
  x198 = x197+x184;
  x199 = (br_word_t)(x198<x184);
  x200 = x199+x189;
  x201 = (br_word_t)(x200<x189);
  x202 = (0u-(br_word_t)1)+((br_word_t)(x201==(br_word_t)0));
  x203 = x202^0xffffffffffffffff;
  x204 = ((br_word_t)38&x202)|((br_word_t)0&x203);
  x205 = x204+x194;
  x206 = x205;
  x207 = x196;
  x208 = x198;
  x209 = x200;
  /*skip*/
  _br_store(out0+0, x206);
  _br_store(out0+8, x207);
  _br_store(out0+16, x208);
  _br_store(out0+24, x209);
  /*skip*/
}

/* NOTE: The following wrapper function is not covered by Coq proofs */
static void fiat_curve25519_solinas_mul(uint64_t out1[4], const uint64_t arg1[4], const uint64_t arg2[4]) {
  internal_fiat_curve25519_solinas_mul((uintptr_t)out1, (uintptr_t)arg1, (uintptr_t)arg2);
}


/*
 * Input Bounds:
 *   in0: [[0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff]]
 * Output Bounds:
 *   out0: [[0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff]]
 */
static
void internal_fiat_curve25519_solinas_square(br_word_t out0, br_word_t in0) {
  br_word_t x6, x9, x15, x7, x16, x4, x17, x19, x20, x5, x21, x12, x22, x24, x25, x13, x26, x10, x27, x29, x30, x11, x32, x18, x35, x23, x36, x33, x37, x39, x40, x28, x42, x31, x8, x46, x47, x14, x48, x50, x51, x52, x34, x53, x55, x56, x57, x38, x58, x60, x61, x62, x41, x63, x65, x66, x67, x43, x68, x70, x71, x44, x3, x2, x1, x0, x80, x45, x82, x49, x83, x77, x84, x86, x87, x54, x88, x78, x89, x91, x92, x59, x93, x75, x94, x96, x97, x64, x98, x76, x99, x101, x102, x69, x103, x73, x104, x106, x107, x72, x108, x74, x109, x105, x100, x95, x114, x81, x119, x85, x120, x112, x121, x123, x124, x90, x125, x110, x126, x128, x129, x111, x116, x79, x132, x118, x133, x117, x134, x136, x137, x122, x138, x115, x139, x141, x142, x127, x143, x113, x144, x146, x147, x130, x148, x149, x131, x151, x135, x153, x140, x155, x145, x157, x158, x159, x160, x150, x161, x152, x154, x156, x162, x163, x164, x165;
  x0 = _br_load(in0+0);
  x1 = _br_load(in0+8);
  x2 = _br_load(in0+16);
  x3 = _br_load(in0+24);
  /*skip*/
  /*skip*/
  x4 = x0*x3;
  x5 = _br_mulhuu(x0, x3);
  x6 = x0*x2;
  x7 = _br_mulhuu(x0, x2);
  x8 = x0*x1;
  x9 = _br_mulhuu(x0, x1);
  x10 = x3*x2;
  x11 = _br_mulhuu(x3, x2);
  x12 = x3*x1;
  x13 = _br_mulhuu(x3, x1);
  x14 = x9+x6;
  x15 = (br_word_t)(x14<x9);
  x16 = x15+x7;
  x17 = (br_word_t)(x16<x7);
  x18 = x16+x4;
  x19 = (br_word_t)(x18<x4);
  x20 = x17+x19;
  x21 = x20+x5;
  x22 = (br_word_t)(x21<x5);
  x23 = x21+x12;
  x24 = (br_word_t)(x23<x12);
  x25 = x22+x24;
  x26 = x25+x13;
  x27 = (br_word_t)(x26<x13);
  x28 = x26+x10;
  x29 = (br_word_t)(x28<x10);
  x30 = x27+x29;
  x31 = x30+x11;
  x32 = x1*x2;
  x33 = _br_mulhuu(x1, x2);
  x34 = x18+x32;
  x35 = (br_word_t)(x34<x18);
  x36 = x35+x23;
  x37 = (br_word_t)(x36<x23);
  x38 = x36+x33;
  x39 = (br_word_t)(x38<x33);
  x40 = x37+x39;
  x41 = x40+x28;
  x42 = (br_word_t)(x41<x28);
  x43 = x42+x31;
  x44 = (br_word_t)(x43<x31);
  x45 = x8+x8;
  x46 = (br_word_t)(x45<x8);
  x47 = x46+x14;
  x48 = (br_word_t)(x47<x14);
  x49 = x47+x14;
  x50 = (br_word_t)(x49<x14);
  x51 = x48+x50;
  x52 = x51+x34;
  x53 = (br_word_t)(x52<x34);
  x54 = x52+x34;
  x55 = (br_word_t)(x54<x34);
  x56 = x53+x55;
  x57 = x56+x38;
  x58 = (br_word_t)(x57<x38);
  x59 = x57+x38;
  x60 = (br_word_t)(x59<x38);
  x61 = x58+x60;
  x62 = x61+x41;
  x63 = (br_word_t)(x62<x41);
  x64 = x62+x41;
  x65 = (br_word_t)(x64<x41);
  x66 = x63+x65;
  x67 = x66+x43;
  x68 = (br_word_t)(x67<x43);
  x69 = x67+x43;
  x70 = (br_word_t)(x69<x43);
  x71 = x68+x70;
  x72 = (x71+x44)+x44;
  x73 = x3*x3;
  x74 = _br_mulhuu(x3, x3);
  x75 = x2*x2;
  x76 = _br_mulhuu(x2, x2);
  x77 = x1*x1;
  x78 = _br_mulhuu(x1, x1);
  x79 = x0*x0;
  x80 = _br_mulhuu(x0, x0);
  x81 = x45+x80;
  x82 = (br_word_t)(x81<x45);
  x83 = x82+x49;
  x84 = (br_word_t)(x83<x49);
  x85 = x83+x77;
  x86 = (br_word_t)(x85<x77);
  x87 = x84+x86;
  x88 = x87+x54;
  x89 = (br_word_t)(x88<x54);
  x90 = x88+x78;
  x91 = (br_word_t)(x90<x78);
  x92 = x89+x91;
  x93 = x92+x59;
  x94 = (br_word_t)(x93<x59);
  x95 = x93+x75;
  x96 = (br_word_t)(x95<x75);
  x97 = x94+x96;
  x98 = x97+x64;
  x99 = (br_word_t)(x98<x64);
  x100 = x98+x76;
  x101 = (br_word_t)(x100<x76);
  x102 = x99+x101;
  x103 = x102+x69;
  x104 = (br_word_t)(x103<x69);
  x105 = x103+x73;
  x106 = (br_word_t)(x105<x73);
  x107 = x104+x106;
  x108 = x107+x72;
  x109 = x108+x74;
  x110 = (br_word_t)38*x109;
  x111 = _br_mulhuu((br_word_t)38, x109);
  x112 = (br_word_t)38*x105;
  x113 = _br_mulhuu((br_word_t)38, x105);
  x114 = (br_word_t)38*x100;
  x115 = _br_mulhuu((br_word_t)38, x100);
  x116 = (br_word_t)38*x95;
  x117 = _br_mulhuu((br_word_t)38, x95);
  x118 = x81+x114;
  x119 = (br_word_t)(x118<x81);
  x120 = x119+x85;
  x121 = (br_word_t)(x120<x85);
  x122 = x120+x112;
  x123 = (br_word_t)(x122<x112);
  x124 = x121+x123;
  x125 = x124+x90;
  x126 = (br_word_t)(x125<x90);
  x127 = x125+x110;
  x128 = (br_word_t)(x127<x110);
  x129 = x126+x128;
  x130 = x129+x111;
  x131 = x79+x116;
  x132 = (br_word_t)(x131<x79);
  x133 = x132+x118;
  x134 = (br_word_t)(x133<x118);
  x135 = x133+x117;
  x136 = (br_word_t)(x135<x117);
  x137 = x134+x136;
  x138 = x137+x122;
  x139 = (br_word_t)(x138<x122);
  x140 = x138+x115;
  x141 = (br_word_t)(x140<x115);
  x142 = x139+x141;
  x143 = x142+x127;
  x144 = (br_word_t)(x143<x127);
  x145 = x143+x113;
  x146 = (br_word_t)(x145<x113);
  x147 = x144+x146;
  x148 = x147+x130;
  x149 = (br_word_t)38*x148;
  x150 = x131+x149;
  x151 = (br_word_t)(x150<x131);
  x152 = x151+x135;
  x153 = (br_word_t)(x152<x135);
  x154 = x153+x140;
  x155 = (br_word_t)(x154<x140);
  x156 = x155+x145;
  x157 = (br_word_t)(x156<x145);
  x158 = (0u-(br_word_t)1)+((br_word_t)(x157==(br_word_t)0));
  x159 = x158^0xffffffffffffffff;
  x160 = ((br_word_t)38&x158)|((br_word_t)0&x159);
  x161 = x160+x150;
  x162 = x161;
  x163 = x152;
  x164 = x154;
  x165 = x156;
  /*skip*/
  _br_store(out0+0, x162);
  _br_store(out0+8, x163);
  _br_store(out0+16, x164);
  _br_store(out0+24, x165);
  /*skip*/
}

/* NOTE: The following wrapper function is not covered by Coq proofs */
static void fiat_curve25519_solinas_square(uint64_t out1[4], const uint64_t arg1[4]) {
  internal_fiat_curve25519_solinas_square((uintptr_t)out1, (uintptr_t)arg1);
}
