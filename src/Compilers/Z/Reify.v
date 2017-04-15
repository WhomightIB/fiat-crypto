Require Import Coq.ZArith.ZArith.
Require Import Crypto.Compilers.InputSyntax.
Require Import Crypto.Compilers.Z.Syntax.
Require Import Crypto.Compilers.Z.Syntax.Equality.
Require Import Crypto.Compilers.Z.Syntax.Util.
Require Import Crypto.Compilers.WfReflective.
Require Import Crypto.Compilers.Reify.
Require Import Crypto.Compilers.Eta.
Require Import Crypto.Compilers.EtaInterp.

Ltac base_reify_op op op_head extra ::=
     lazymatch op_head with
     | @Z.add => constr:(reify_op op op_head 2 (Add TZ TZ TZ))
     | @Z.mul => constr:(reify_op op op_head 2 (Mul TZ TZ TZ))
     | @Z.sub => constr:(reify_op op op_head 2 (Sub TZ TZ TZ))
     | @Z.shiftl => constr:(reify_op op op_head 2 (Shl TZ TZ TZ))
     | @Z.shiftr => constr:(reify_op op op_head 2 (Shr TZ TZ TZ))
     | @Z.land => constr:(reify_op op op_head 2 (Land TZ TZ TZ))
     | @Z.lor => constr:(reify_op op op_head 2 (Lor TZ TZ TZ))
     | @Z.opp => constr:(reify_op op op_head 1 (Opp TZ TZ))
     end.
Ltac base_reify_type T ::=
     lazymatch T with
     | Z => TZ
     end.
Ltac Reify' e := Compilers.Reify.Reify' base_type interp_base_type op e.
Ltac Reify e :=
  let v := Compilers.Reify.Reify base_type interp_base_type op make_const e in
  constr:(ExprEta v).
Ltac prove_ExprEta_Compile_correct :=
  fun _
  => intros;
     rewrite ?InterpExprEta;
     prove_compile_correct_using ltac:(fun _ => apply make_const_correct) ().

Ltac Reify_rhs :=
 Compilers.Reify.Reify_rhs_gen Reify prove_ExprEta_Compile_correct interp_op ltac:(fun tac => tac ()).

Ltac prereify_context_variables :=
 Compilers.Reify.prereify_context_variables interp_base_type.
Ltac reify_context_variable :=
 Compilers.Reify.reify_context_variable base_type interp_base_type op.
Ltac lazy_reify_context_variable :=
 Compilers.Reify.lazy_reify_context_variable base_type interp_base_type op.
Ltac reify_context_variables :=
 Compilers.Reify.reify_context_variables base_type interp_base_type op.
