//! Autogenerated: 'src/ExtractionOCaml/dettman_multiplication' --lang Rust --inline secp256k1_dettman 64 5 48 2 '2^256 - 4294968273' mul square
//! curve description: secp256k1_dettman
//! machine_wordsize = 64 (from "64")
//! requested operations: mul, square
//! n = 5 (from "5")
//! last_limb_width = 48 (from "48")
//! last_reduction = 2 (from "2")
//! s-c = 2^256 - [(1, 4294968273)] (from "2^256 - 4294968273")
//! inbounds_multiplier: None (from "")
//!
//! Computed values:
//!
//!

#![allow(unused_parens)]
#![allow(non_camel_case_types)]

/// Since `Index` and `IndexMut` aren't callable in `const` contexts yet, this helper type helps unify
/// arrays and user-defined array-wrapper types into a single type which can be indexed in `const`
/// contexts. Once `const trait`s are stabilized this type can go away
struct IndexConst<T: ?Sized>(T);

impl<'a, T, const N: usize> IndexConst<&'a [T; N]> {
    #[inline(always)]
    #[allow(unused)]
    const fn index(self, i: usize) -> &'a T {
        &self.0[i]
    }
}
impl<'a, 'b, T, const N: usize> IndexConst<&'a mut &'b mut [T; N]> {
    #[inline(always)]
    #[allow(unused)]
    const fn index_mut(self, i: usize) -> &'a mut T {
        &mut self.0[i]
    }
}



/// The function fiat_secp256k1_dettman_mul multiplies two field elements.
///
/// Postconditions:
///   eval out1 mod 115792089237316195423570985008687907853269984665640564039457584007908834671663 = (eval arg1 * eval arg2) mod 115792089237316195423570985008687907853269984665640564039457584007908834671663
///
/// Input Bounds:
///   arg1: [[0x0 ~> 0x1ffffffffffffe], [0x0 ~> 0x1ffffffffffffe], [0x0 ~> 0x1ffffffffffffe], [0x0 ~> 0x1ffffffffffffe], [0x0 ~> 0x1fffffffffffe]]
///   arg2: [[0x0 ~> 0x1ffffffffffffe], [0x0 ~> 0x1ffffffffffffe], [0x0 ~> 0x1ffffffffffffe], [0x0 ~> 0x1ffffffffffffe], [0x0 ~> 0x1fffffffffffe]]
/// Output Bounds:
///   out1: [[0x0 ~> 0x1ffffffffffffe], [0x0 ~> 0x1ffffffffffffe], [0x0 ~> 0x1ffffffffffffe], [0x0 ~> 0x1ffffffffffffe], [0x0 ~> 0x17fffffffffff]]
#[inline]
pub const fn fiat_secp256k1_dettman_mul(mut out1: &mut [u64; 5], arg1: &[u64; 5], arg2: &[u64; 5]) {
  let x1: u128 = (((*IndexConst(arg1).index(4)) as u128) * ((*IndexConst(arg2).index(4)) as u128));
  let x2: u64 = ((x1 >> 64) as u64);
  let x3: u64 = ((x1 & (0xffffffffffffffff as u128)) as u64);
  let x4: u128 = (((((*IndexConst(arg1).index(0)) as u128) * ((*IndexConst(arg2).index(3)) as u128)) + ((((*IndexConst(arg1).index(1)) as u128) * ((*IndexConst(arg2).index(2)) as u128)) + ((((*IndexConst(arg1).index(2)) as u128) * ((*IndexConst(arg2).index(1)) as u128)) + (((*IndexConst(arg1).index(3)) as u128) * ((*IndexConst(arg2).index(0)) as u128))))) + ((x3 as u128) * (0x1000003d10 as u128)));
  let x5: u64 = ((x4 >> 52) as u64);
  let x6: u64 = ((x4 & (0xfffffffffffff as u128)) as u64);
  let x7: u128 = (((x5 as u128) + ((((*IndexConst(arg1).index(0)) as u128) * ((*IndexConst(arg2).index(4)) as u128)) + ((((*IndexConst(arg1).index(1)) as u128) * ((*IndexConst(arg2).index(3)) as u128)) + ((((*IndexConst(arg1).index(2)) as u128) * ((*IndexConst(arg2).index(2)) as u128)) + ((((*IndexConst(arg1).index(3)) as u128) * ((*IndexConst(arg2).index(1)) as u128)) + (((*IndexConst(arg1).index(4)) as u128) * ((*IndexConst(arg2).index(0)) as u128))))))) + ((x2 as u128) * (0x1000003d10000 as u128)));
  let x8: u64 = ((x7 >> 52) as u64);
  let x9: u64 = ((x7 & (0xfffffffffffff as u128)) as u64);
  let x10: u128 = ((x8 as u128) + ((((*IndexConst(arg1).index(1)) as u128) * ((*IndexConst(arg2).index(4)) as u128)) + ((((*IndexConst(arg1).index(2)) as u128) * ((*IndexConst(arg2).index(3)) as u128)) + ((((*IndexConst(arg1).index(3)) as u128) * ((*IndexConst(arg2).index(2)) as u128)) + (((*IndexConst(arg1).index(4)) as u128) * ((*IndexConst(arg2).index(1)) as u128))))));
  let x11: u64 = ((x10 >> 52) as u64);
  let x12: u64 = ((x10 & (0xfffffffffffff as u128)) as u64);
  let x13: u64 = (x9 >> 48);
  let x14: u64 = (x9 & 0xffffffffffff);
  let x15: u128 = ((((*IndexConst(arg1).index(0)) as u128) * ((*IndexConst(arg2).index(0)) as u128)) + (((x13 + (x12 << 4)) as u128) * (0x1000003d1 as u128)));
  let x16: u64 = ((x15 >> 52) as u64);
  let x17: u64 = ((x15 & (0xfffffffffffff as u128)) as u64);
  let x18: u128 = ((x11 as u128) + ((((*IndexConst(arg1).index(2)) as u128) * ((*IndexConst(arg2).index(4)) as u128)) + ((((*IndexConst(arg1).index(3)) as u128) * ((*IndexConst(arg2).index(3)) as u128)) + (((*IndexConst(arg1).index(4)) as u128) * ((*IndexConst(arg2).index(2)) as u128)))));
  let x19: u64 = ((x18 >> 52) as u64);
  let x20: u64 = ((x18 & (0xfffffffffffff as u128)) as u64);
  let x21: u128 = (((x16 as u128) + ((((*IndexConst(arg1).index(0)) as u128) * ((*IndexConst(arg2).index(1)) as u128)) + (((*IndexConst(arg1).index(1)) as u128) * ((*IndexConst(arg2).index(0)) as u128)))) + ((x20 as u128) * (0x1000003d10 as u128)));
  let x22: u64 = ((x21 >> 52) as u64);
  let x23: u64 = ((x21 & (0xfffffffffffff as u128)) as u64);
  let x24: u128 = ((x19 as u128) + ((((*IndexConst(arg1).index(3)) as u128) * ((*IndexConst(arg2).index(4)) as u128)) + (((*IndexConst(arg1).index(4)) as u128) * ((*IndexConst(arg2).index(3)) as u128))));
  let x25: u64 = ((x24 >> 64) as u64);
  let x26: u64 = ((x24 & (0xffffffffffffffff as u128)) as u64);
  let x27: u128 = (((x22 as u128) + ((((*IndexConst(arg1).index(0)) as u128) * ((*IndexConst(arg2).index(2)) as u128)) + ((((*IndexConst(arg1).index(1)) as u128) * ((*IndexConst(arg2).index(1)) as u128)) + (((*IndexConst(arg1).index(2)) as u128) * ((*IndexConst(arg2).index(0)) as u128))))) + ((x26 as u128) * (0x1000003d10 as u128)));
  let x28: u64 = ((x27 >> 52) as u64);
  let x29: u64 = ((x27 & (0xfffffffffffff as u128)) as u64);
  let x30: u128 = (((x28 + x6) as u128) + ((x25 as u128) * (0x1000003d10000 as u128)));
  let x31: u64 = ((x30 >> 52) as u64);
  let x32: u64 = ((x30 & (0xfffffffffffff as u128)) as u64);
  let x33: u64 = (x31 + x14);
  *IndexConst(&mut out1).index_mut(0) = x17;
  *IndexConst(&mut out1).index_mut(1) = x23;
  *IndexConst(&mut out1).index_mut(2) = x29;
  *IndexConst(&mut out1).index_mut(3) = x32;
  *IndexConst(&mut out1).index_mut(4) = x33;
}

/// The function fiat_secp256k1_dettman_square squares a field element.
///
/// Postconditions:
///   eval out1 mod 115792089237316195423570985008687907853269984665640564039457584007908834671663 = (eval arg1 * eval arg1) mod 115792089237316195423570985008687907853269984665640564039457584007908834671663
///
/// Input Bounds:
///   arg1: [[0x0 ~> 0x1ffffffffffffe], [0x0 ~> 0x1ffffffffffffe], [0x0 ~> 0x1ffffffffffffe], [0x0 ~> 0x1ffffffffffffe], [0x0 ~> 0x1fffffffffffe]]
/// Output Bounds:
///   out1: [[0x0 ~> 0x1ffffffffffffe], [0x0 ~> 0x1ffffffffffffe], [0x0 ~> 0x1ffffffffffffe], [0x0 ~> 0x1ffffffffffffe], [0x0 ~> 0x17fffffffffff]]
#[inline]
pub const fn fiat_secp256k1_dettman_square(mut out1: &mut [u64; 5], arg1: &[u64; 5]) {
  let x1: u64 = ((*IndexConst(arg1).index(3)) * 0x2);
  let x2: u64 = ((*IndexConst(arg1).index(2)) * 0x2);
  let x3: u64 = ((*IndexConst(arg1).index(1)) * 0x2);
  let x4: u64 = ((*IndexConst(arg1).index(0)) * 0x2);
  let x5: u128 = (((*IndexConst(arg1).index(4)) as u128) * ((*IndexConst(arg1).index(4)) as u128));
  let x6: u64 = ((x5 >> 64) as u64);
  let x7: u64 = ((x5 & (0xffffffffffffffff as u128)) as u64);
  let x8: u128 = ((((x4 as u128) * ((*IndexConst(arg1).index(3)) as u128)) + ((x3 as u128) * ((*IndexConst(arg1).index(2)) as u128))) + ((x7 as u128) * (0x1000003d10 as u128)));
  let x9: u64 = ((x8 >> 52) as u64);
  let x10: u64 = ((x8 & (0xfffffffffffff as u128)) as u64);
  let x11: u128 = (((x9 as u128) + (((x4 as u128) * ((*IndexConst(arg1).index(4)) as u128)) + (((x3 as u128) * ((*IndexConst(arg1).index(3)) as u128)) + (((*IndexConst(arg1).index(2)) as u128) * ((*IndexConst(arg1).index(2)) as u128))))) + ((x6 as u128) * (0x1000003d10000 as u128)));
  let x12: u64 = ((x11 >> 52) as u64);
  let x13: u64 = ((x11 & (0xfffffffffffff as u128)) as u64);
  let x14: u128 = ((x12 as u128) + (((x3 as u128) * ((*IndexConst(arg1).index(4)) as u128)) + ((x2 as u128) * ((*IndexConst(arg1).index(3)) as u128))));
  let x15: u64 = ((x14 >> 52) as u64);
  let x16: u64 = ((x14 & (0xfffffffffffff as u128)) as u64);
  let x17: u64 = (x13 >> 48);
  let x18: u64 = (x13 & 0xffffffffffff);
  let x19: u128 = ((((*IndexConst(arg1).index(0)) as u128) * ((*IndexConst(arg1).index(0)) as u128)) + (((x17 + (x16 << 4)) as u128) * (0x1000003d1 as u128)));
  let x20: u64 = ((x19 >> 52) as u64);
  let x21: u64 = ((x19 & (0xfffffffffffff as u128)) as u64);
  let x22: u128 = ((x15 as u128) + (((x2 as u128) * ((*IndexConst(arg1).index(4)) as u128)) + (((*IndexConst(arg1).index(3)) as u128) * ((*IndexConst(arg1).index(3)) as u128))));
  let x23: u64 = ((x22 >> 52) as u64);
  let x24: u64 = ((x22 & (0xfffffffffffff as u128)) as u64);
  let x25: u128 = (((x20 as u128) + ((x4 as u128) * ((*IndexConst(arg1).index(1)) as u128))) + ((x24 as u128) * (0x1000003d10 as u128)));
  let x26: u64 = ((x25 >> 52) as u64);
  let x27: u64 = ((x25 & (0xfffffffffffff as u128)) as u64);
  let x28: u128 = ((x23 as u128) + ((x1 as u128) * ((*IndexConst(arg1).index(4)) as u128)));
  let x29: u64 = ((x28 >> 64) as u64);
  let x30: u64 = ((x28 & (0xffffffffffffffff as u128)) as u64);
  let x31: u128 = (((x26 as u128) + (((x4 as u128) * ((*IndexConst(arg1).index(2)) as u128)) + (((*IndexConst(arg1).index(1)) as u128) * ((*IndexConst(arg1).index(1)) as u128)))) + ((x30 as u128) * (0x1000003d10 as u128)));
  let x32: u64 = ((x31 >> 52) as u64);
  let x33: u64 = ((x31 & (0xfffffffffffff as u128)) as u64);
  let x34: u128 = (((x32 + x10) as u128) + ((x29 as u128) * (0x1000003d10000 as u128)));
  let x35: u64 = ((x34 >> 52) as u64);
  let x36: u64 = ((x34 & (0xfffffffffffff as u128)) as u64);
  let x37: u64 = (x35 + x18);
  *IndexConst(&mut out1).index_mut(0) = x21;
  *IndexConst(&mut out1).index_mut(1) = x27;
  *IndexConst(&mut out1).index_mut(2) = x33;
  *IndexConst(&mut out1).index_mut(3) = x36;
  *IndexConst(&mut out1).index_mut(4) = x37;
}
