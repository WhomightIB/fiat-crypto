(* This file is autogenerated from Defaults.v by remake_packages.py *)
Require Import Crypto.Specific.Framework.CurveParametersPackage.
Require Import Crypto.Specific.Framework.ArithmeticSynthesis.BasePackage.
Require Export Crypto.Specific.Framework.ArithmeticSynthesis.Defaults.
Require Import Crypto.Specific.Framework.Packages.
Require Import Crypto.Util.TagList.

Module TAG.
  Inductive tags := mul_code_correct | square_code_correct | carry_sig | zero_sig | one_sig | a24_sig | add_sig | sub_sig | opp_sig | mul_sig | square_sig | ring.
End TAG.

Ltac add_mul_code_correct pkg P_extra_prove_mul_eq :=
  Tag.update_by_tac_if_not_exists
    pkg
    TAG.mul_code_correct
    ltac:(fun _ => let sz := Tag.get pkg TAG.sz in
                   let sz2 := Tag.get pkg TAG.sz2 in
                   let wt := Tag.get pkg TAG.wt in
                   let s := Tag.get pkg TAG.s in
                   let c := Tag.get pkg TAG.c in
                   let mul_code := Tag.get pkg TAG.mul_code in
                   let mul_code_correct := fresh "mul_code_correct" in
                   let mul_code_correct := pose_mul_code_correct P_extra_prove_mul_eq sz sz2 wt s c mul_code mul_code_correct in
                   constr:(mul_code_correct)).
Ltac add_square_code_correct pkg P_extra_prove_square_eq :=
  Tag.update_by_tac_if_not_exists
    pkg
    TAG.square_code_correct
    ltac:(fun _ => let sz := Tag.get pkg TAG.sz in
                   let sz2 := Tag.get pkg TAG.sz2 in
                   let wt := Tag.get pkg TAG.wt in
                   let s := Tag.get pkg TAG.s in
                   let c := Tag.get pkg TAG.c in
                   let square_code := Tag.get pkg TAG.square_code in
                   let square_code_correct := fresh "square_code_correct" in
                   let square_code_correct := pose_square_code_correct P_extra_prove_square_eq sz sz2 wt s c square_code square_code_correct in
                   constr:(square_code_correct)).
Ltac add_carry_sig pkg :=
  Tag.update_by_tac_if_not_exists
    pkg
    TAG.carry_sig
    ltac:(fun _ => let wt := Tag.get pkg TAG.wt in
                   let m := Tag.get pkg TAG.m in
                   let base := Tag.get pkg TAG.base in
                   let sz := Tag.get pkg TAG.sz in
                   let s := Tag.get pkg TAG.s in
                   let c := Tag.get pkg TAG.c in
                   let carry_chains := Tag.get pkg TAG.carry_chains in
                   let carry_sig := fresh "carry_sig" in
                   let carry_sig := pose_carry_sig wt m base sz s c carry_chains carry_sig in
                   constr:(carry_sig)).
Ltac add_zero_sig pkg :=
  Tag.update_by_tac_if_not_exists
    pkg
    TAG.zero_sig
    ltac:(fun _ => let wt := Tag.get pkg TAG.wt in
                   let m := Tag.get pkg TAG.m in
                   let base := Tag.get pkg TAG.base in
                   let sz := Tag.get pkg TAG.sz in
                   let sz_nonzero := Tag.get pkg TAG.sz_nonzero in
                   let base_pos := Tag.get pkg TAG.base_pos in
                   let zero_sig := fresh "zero_sig" in
                   let zero_sig := pose_zero_sig wt m base sz sz_nonzero base_pos zero_sig in
                   constr:(zero_sig)).
Ltac add_one_sig pkg :=
  Tag.update_by_tac_if_not_exists
    pkg
    TAG.one_sig
    ltac:(fun _ => let wt := Tag.get pkg TAG.wt in
                   let m := Tag.get pkg TAG.m in
                   let base := Tag.get pkg TAG.base in
                   let sz := Tag.get pkg TAG.sz in
                   let sz_nonzero := Tag.get pkg TAG.sz_nonzero in
                   let base_pos := Tag.get pkg TAG.base_pos in
                   let one_sig := fresh "one_sig" in
                   let one_sig := pose_one_sig wt m base sz sz_nonzero base_pos one_sig in
                   constr:(one_sig)).
Ltac add_a24_sig pkg :=
  Tag.update_by_tac_if_not_exists
    pkg
    TAG.a24_sig
    ltac:(fun _ => let sz := Tag.get pkg TAG.sz in
                   let m := Tag.get pkg TAG.m in
                   let wt := Tag.get pkg TAG.wt in
                   let a24 := Tag.get pkg TAG.a24 in
                   let a24_sig := fresh "a24_sig" in
                   let a24_sig := pose_a24_sig sz m wt a24 a24_sig in
                   constr:(a24_sig)).
Ltac add_add_sig pkg :=
  Tag.update_by_tac_if_not_exists
    pkg
    TAG.add_sig
    ltac:(fun _ => let wt := Tag.get pkg TAG.wt in
                   let m := Tag.get pkg TAG.m in
                   let base := Tag.get pkg TAG.base in
                   let sz := Tag.get pkg TAG.sz in
                   let add_sig := fresh "add_sig" in
                   let add_sig := pose_add_sig wt m base sz add_sig in
                   constr:(add_sig)).
Ltac add_sub_sig pkg :=
  Tag.update_by_tac_if_not_exists
    pkg
    TAG.sub_sig
    ltac:(fun _ => let wt := Tag.get pkg TAG.wt in
                   let m := Tag.get pkg TAG.m in
                   let base := Tag.get pkg TAG.base in
                   let sz := Tag.get pkg TAG.sz in
                   let coef := Tag.get pkg TAG.coef in
                   let sub_sig := fresh "sub_sig" in
                   let sub_sig := pose_sub_sig wt m base sz coef sub_sig in
                   constr:(sub_sig)).
Ltac add_opp_sig pkg :=
  Tag.update_by_tac_if_not_exists
    pkg
    TAG.opp_sig
    ltac:(fun _ => let wt := Tag.get pkg TAG.wt in
                   let m := Tag.get pkg TAG.m in
                   let base := Tag.get pkg TAG.base in
                   let sz := Tag.get pkg TAG.sz in
                   let coef := Tag.get pkg TAG.coef in
                   let opp_sig := fresh "opp_sig" in
                   let opp_sig := pose_opp_sig wt m base sz coef opp_sig in
                   constr:(opp_sig)).
Ltac add_mul_sig pkg :=
  Tag.update_by_tac_if_not_exists
    pkg
    TAG.mul_sig
    ltac:(fun _ => let wt := Tag.get pkg TAG.wt in
                   let m := Tag.get pkg TAG.m in
                   let base := Tag.get pkg TAG.base in
                   let sz := Tag.get pkg TAG.sz in
                   let s := Tag.get pkg TAG.s in
                   let c := Tag.get pkg TAG.c in
                   let mul_code := Tag.get pkg TAG.mul_code in
                   let sz_nonzero := Tag.get pkg TAG.sz_nonzero in
                   let s_nonzero := Tag.get pkg TAG.s_nonzero in
                   let base_pos := Tag.get pkg TAG.base_pos in
                   let mul_code_correct := Tag.get pkg TAG.mul_code_correct in
                   let mul_sig := fresh "mul_sig" in
                   let mul_sig := pose_mul_sig wt m base sz s c mul_code sz_nonzero s_nonzero base_pos mul_code_correct mul_sig in
                   constr:(mul_sig)).
Ltac add_square_sig pkg :=
  Tag.update_by_tac_if_not_exists
    pkg
    TAG.square_sig
    ltac:(fun _ => let wt := Tag.get pkg TAG.wt in
                   let m := Tag.get pkg TAG.m in
                   let base := Tag.get pkg TAG.base in
                   let sz := Tag.get pkg TAG.sz in
                   let s := Tag.get pkg TAG.s in
                   let c := Tag.get pkg TAG.c in
                   let square_code := Tag.get pkg TAG.square_code in
                   let sz_nonzero := Tag.get pkg TAG.sz_nonzero in
                   let s_nonzero := Tag.get pkg TAG.s_nonzero in
                   let base_pos := Tag.get pkg TAG.base_pos in
                   let square_code_correct := Tag.get pkg TAG.square_code_correct in
                   let square_sig := fresh "square_sig" in
                   let square_sig := pose_square_sig wt m base sz s c square_code sz_nonzero s_nonzero base_pos square_code_correct square_sig in
                   constr:(square_sig)).
Ltac add_ring pkg :=
  Tag.update_by_tac_if_not_exists
    pkg
    TAG.ring
    ltac:(fun _ => let sz := Tag.get pkg TAG.sz in
                   let m := Tag.get pkg TAG.m in
                   let wt := Tag.get pkg TAG.wt in
                   let wt_divides' := Tag.get pkg TAG.wt_divides' in
                   let sz_nonzero := Tag.get pkg TAG.sz_nonzero in
                   let wt_nonzero := Tag.get pkg TAG.wt_nonzero in
                   let zero_sig := Tag.get pkg TAG.zero_sig in
                   let one_sig := Tag.get pkg TAG.one_sig in
                   let opp_sig := Tag.get pkg TAG.opp_sig in
                   let add_sig := Tag.get pkg TAG.add_sig in
                   let sub_sig := Tag.get pkg TAG.sub_sig in
                   let mul_sig := Tag.get pkg TAG.mul_sig in
                   let ring := fresh "ring" in
                   let ring := pose_ring sz m wt wt_divides' sz_nonzero wt_nonzero zero_sig one_sig opp_sig add_sig sub_sig mul_sig ring in
                   constr:(ring)).
Ltac add_Defaults_package pkg P_extra_prove_mul_eq P_extra_prove_square_eq :=
  let pkg := add_mul_code_correct pkg P_extra_prove_mul_eq in
  let pkg := add_square_code_correct pkg P_extra_prove_square_eq in
  let pkg := add_carry_sig pkg in
  let pkg := add_zero_sig pkg in
  let pkg := add_one_sig pkg in
  let pkg := add_a24_sig pkg in
  let pkg := add_add_sig pkg in
  let pkg := add_sub_sig pkg in
  let pkg := add_opp_sig pkg in
  let pkg := add_mul_sig pkg in
  let pkg := add_square_sig pkg in
  let pkg := add_ring pkg in
  Tag.strip_subst_local pkg.


Module MakeDefaultsPackage (PKG : PrePackage).
  Module Import MakeDefaultsPackageInternal := MakePackageBase PKG.

  Ltac get_mul_code_correct _ := get TAG.mul_code_correct.
  Notation mul_code_correct := (ltac:(let v := get_mul_code_correct () in exact v)) (only parsing).
  Ltac get_square_code_correct _ := get TAG.square_code_correct.
  Notation square_code_correct := (ltac:(let v := get_square_code_correct () in exact v)) (only parsing).
  Ltac get_carry_sig _ := get TAG.carry_sig.
  Notation carry_sig := (ltac:(let v := get_carry_sig () in exact v)) (only parsing).
  Ltac get_zero_sig _ := get TAG.zero_sig.
  Notation zero_sig := (ltac:(let v := get_zero_sig () in exact v)) (only parsing).
  Ltac get_one_sig _ := get TAG.one_sig.
  Notation one_sig := (ltac:(let v := get_one_sig () in exact v)) (only parsing).
  Ltac get_a24_sig _ := get TAG.a24_sig.
  Notation a24_sig := (ltac:(let v := get_a24_sig () in exact v)) (only parsing).
  Ltac get_add_sig _ := get TAG.add_sig.
  Notation add_sig := (ltac:(let v := get_add_sig () in exact v)) (only parsing).
  Ltac get_sub_sig _ := get TAG.sub_sig.
  Notation sub_sig := (ltac:(let v := get_sub_sig () in exact v)) (only parsing).
  Ltac get_opp_sig _ := get TAG.opp_sig.
  Notation opp_sig := (ltac:(let v := get_opp_sig () in exact v)) (only parsing).
  Ltac get_mul_sig _ := get TAG.mul_sig.
  Notation mul_sig := (ltac:(let v := get_mul_sig () in exact v)) (only parsing).
  Ltac get_square_sig _ := get TAG.square_sig.
  Notation square_sig := (ltac:(let v := get_square_sig () in exact v)) (only parsing).
  Ltac get_ring _ := get TAG.ring.
  Notation ring := (ltac:(let v := get_ring () in exact v)) (only parsing).
End MakeDefaultsPackage.
