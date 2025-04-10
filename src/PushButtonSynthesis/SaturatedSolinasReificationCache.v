(** * Push-Button Synthesis of Saturated Solinas: Reification Cache *)
From Coq Require Import QArith_base Qround.
From Coq Require Import ZArith.
From Coq Require Import Derive.
Require Import Crypto.Arithmetic.Core.
Require Import Crypto.Arithmetic.ModOps.
Require Import Crypto.Arithmetic.Saturated.
Require Import Crypto.PushButtonSynthesis.ReificationCache.
Local Open Scope Z_scope.

Local Set Keyed Unification. (* needed for making [autorewrite] fast, c.f. COQBUG(https://github.com/coq/coq/issues/9283) *)

Module Export SaturatedSolinas.
  Definition mulmod
             (s : Z)
             (c : list (Z * Z))
             (log2base : Z)
             (n nreductions : nat)
    := @Rows.mulmod (weight log2base 1) (2^log2base) s c n nreductions.

  Derive reified_mul_gen
         SuchThat (is_reification_of reified_mul_gen mulmod)
         As reified_mul_gen_correct.
  Proof. Time cache_reify (). Time Qed.
#[global]
  Hint Extern 1 (_ = _) => apply_cached_reification mulmod (proj1 reified_mul_gen_correct) : reify_cache_gen.
  Local Definition reified_mul_gen_correct_proj2 := proj2 reified_mul_gen_correct.

  Hint Immediate reified_mul_gen_correct_proj2 : wf_gen_cache.
#[global]
  Hint Rewrite (proj1 reified_mul_gen_correct) : interp_gen_cache.
  Local Opaque reified_mul_gen. (* needed for making [autorewrite] not take a very long time *)
End SaturatedSolinas.
