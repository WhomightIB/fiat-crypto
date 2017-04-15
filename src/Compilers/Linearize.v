(** * Linearize: Place all and only operations in let binders *)
Require Import Crypto.Compilers.Syntax.
Require Import Crypto.Compilers.SmartMap.
(*Require Import Crypto.Util.Tactics.*)

Local Open Scope ctype_scope.
Section language.
  Context (let_bind_op_args : bool)
          {base_type_code : Type}
          {op : flat_type base_type_code -> flat_type base_type_code -> Type}.

  Local Notation flat_type := (flat_type base_type_code).
  Local Notation type := (type base_type_code).
  Local Notation Tbase := (@Tbase base_type_code).
  Local Notation Expr := (@Expr base_type_code op).

  Section with_var.
    Context {var : base_type_code -> Type}.
    Local Notation exprf := (@exprf base_type_code op var).
    Local Notation expr := (@expr base_type_code op var).

    Section under_lets.
      Fixpoint under_letsf {t} (e : exprf t)
        : forall {tC} (C : interp_flat_type var t -> exprf tC), exprf tC
        := match e in Syntax.exprf _ _ t return forall {tC} (C : interp_flat_type var t -> exprf tC), exprf tC with
           | LetIn _ ex _ eC
             => fun _ C => @under_letsf _ ex _ (fun v => @under_letsf _ (eC v) _ C)
           | TT => fun _ C => C tt
           | Var _ x => fun _ C => C x
           | Op _ _ op args as e => fun _ C => LetIn e C
           | Pair A x B y => fun _ C => @under_letsf A x _ (fun x =>
                                        @under_letsf B y _ (fun y =>
                                        C (x, y)))
           end.
    End under_lets.

    Fixpoint linearizef_gen {t} (e : exprf t) : exprf t
      := match e in Syntax.exprf _ _ t return exprf t with
         | LetIn _ ex _ eC
           => under_letsf (@linearizef_gen _ ex) (fun x => @linearizef_gen _ (eC x))
         | TT => TT
         | Var _ x => Var x
         | Op _ _ op args
           => if let_bind_op_args
              then under_letsf (@linearizef_gen _ args) (fun args => LetIn (Op op (SmartVarf args)) SmartVarf)
              else Op op (@linearizef_gen _ args)
         | Pair A ex B ey
           => under_letsf (@linearizef_gen _ ex) (fun x =>
              under_letsf (@linearizef_gen _ ey) (fun y =>
              SmartVarf (t:=Prod A B) (x, y)))
         end.

    Definition linearize_gen {t} (e : expr t) : expr t
      := match e in Syntax.expr _ _ t return expr t with
         | Abs _ _ f => Abs (fun x => linearizef_gen (f x))
         end.
  End with_var.

  Definition Linearize_gen {t} (e : Expr t) : Expr t
    := fun var => linearize_gen (e _).
End language.

Global Arguments under_letsf {_ _ _ _} _ {tC} _.
Global Arguments linearizef_gen _ {_ _ _ _} _.
Global Arguments linearize_gen _ {_ _ _ _} _.
Global Arguments Linearize_gen _ {_ _ _} _ var.

Definition linearizef {base_type_code op var t} e
  := @linearizef_gen false base_type_code op var t e.
Definition a_normalf {base_type_code op var t} e
  := @linearizef_gen true base_type_code op var t e.
Definition linearize {base_type_code op var t} e
  := @linearize_gen false base_type_code op var t e.
Definition a_normal {base_type_code op var t} e
  := @linearize_gen true base_type_code op var t e.
Definition Linearize {base_type_code op t} e
  := @Linearize_gen false base_type_code op t e.
Definition ANormal {base_type_code op t} e
  := @Linearize_gen true base_type_code op t e.
