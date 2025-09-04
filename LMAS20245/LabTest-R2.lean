
macro "use" e:term : tactic => `(tactic| refine Exists.intro $e ?_)

set_option autoImplicit false

/-
  Lab Test - Logic for Multiagent systems

  Fill the `sorry`s below.
  You may **not** use the `simp` tactic (or its variations) or theorems from the standard library for
    the proofs in Exercises 2 ... 5.
  You are **not** allowed to import external libraries.

  Each exercise is worth 1 point.

  You can use a local Lean installation, or the web editor at: https://live.lean-lang.org/

  At the end, send one Lean file titled LastName_FirstName_Group.lean to `horatiu.cheval@fmi.unibuc.ro`
-/

section 

/-
  **Exercise 1:** 
  Define the function `exp : Nat → Nat → Nat` such that, for any natural numbers `a` and `b`, 
  `exp a b` computes `a` to the power of `b`. The definition must be given by structural recursion. 
  We use the convention that `exp 0 0 = 1`.
-/

  def exp (a : Nat) (b : Nat) : Nat := sorry  

end 

section 

  variable (p q : Prop)

  /-
    **Exercise 2**: Prove the following theorem.
  -/

  theorem ex2 : p ∧ q → ((p → q) → q) ∧ p := sorry 

end 

section 

  variable (p : Nat → Nat → Prop)

  /-
    **Exercise 3**: Prove the following theorem.
  -/

  theorem ex3 : (∀ x, ∀ y, p x y) → (∀ y, ∀ x, p x y) := sorry 

end 

section 

  /-
    **Exercise 4**: Prove the following theorem.
  -/

  theorem ex4 : ¬(∀ p : Prop, ∀ q : Prop, (p → q) → (q → p)) := sorry  

end 

section
  opaque Box : Prop → Prop

  prefix:max "□" => Box

  def Diamond (p : Prop) : Prop := ¬□¬p

  prefix:max "⋄" => Diamond

  set_option hygiene false in prefix:100 "⊢K" => KProvable
  inductive KProvable : Prop → Prop where
  | tautology {p : Prop} : p → ⊢K p
  | modusPonens {p q : Prop} : ⊢K p → ⊢K (p → q) → ⊢K q
  | K {p q : Prop} : ⊢K (□(p → q) → □p → □q)
  | necessitation {p : Prop} : ⊢K p → ⊢K □p

  open KProvable

  variable (p : Prop)

  /-
    **Exercise 5**: Prove the following theorem.
  -/

  theorem ex5 : (⊢K ¬(⋄(p ∧ ¬p))) := sorry 


end 
