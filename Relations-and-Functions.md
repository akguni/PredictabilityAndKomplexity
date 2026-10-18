
Imagine two sets: **Set A (Inputs)** and **Set B (Outputs)**. The arrows represent the relation.

### 1. Injective (One-to-One)
*Every input goes to a unique output. No two inputs share the same output.*
```text
    Set A          Set B
   (Inputs)       (Outputs)
    [ 1 ] --------> [ A ]
    [ 2 ] --------> [ B ]
    [ 3 ] --------> [ C ]
                    [ D ]  <-- (It's okay if some are left over)
```
**Is it a function?** ✅ Yes. (Each input has exactly one arrow).

---

### 2. Surjective (Onto)
*Every single output is "hit" by at least one arrow. Nothing is left over in Set B.*
```text
    Set A          Set B
   (Inputs)       (Outputs)
    [ 1 ] --------> [ A ]
    [ 2 ] --\      [ B ] <--- (Two inputs can hit one output)
    [ 3 ] ---/---> [ C ]
```
**Is it a function?** ✅ Yes. (Each input has exactly one arrow).

---

### 3. Bijective (The Perfect Match)
*Both Injective AND Surjective. It is a perfect 1-to-1 pairing. No one is left out, and no one shares.*
```text
    Set A          Set B
   (Inputs)       (Outputs)
    [ 1 ] --------> [ A ]
    [ 2 ] --------> [ B ]
    [ 3 ] --------> [ C ]
```
**Is it a function?** ✅ Yes. (And it is also *invertible*).

---

### 4. NOT a Function (The Rule Breaker)
*To be a function, every input must have **exactly one** output. If an input has zero arrows or two arrows, it's just a "relation," not a function.*

**Case A: The "Cheater" (One input $\to$ Two outputs)**
```text
    Set A          Set B
    [ 1 ] --------> [ A ]
    [ 1 ] --------> [ B ]  <-- ERROR! Input 1 cannot go to two places.
    [ 2 ] --------> [ C ]
```

**Case B: The "Ghost" (One input $\to$ Zero outputs)**
```text
    Set A          Set B
    [ 1 ] --------> [ A ]
    [ 2 ]             [ B ] <-- ERROR! Input 2 must have an output.
    [ 3 ] --------> [ C ]
```
**Is it a function?** ❌ No. These are just general relations.

### Summary Table for quick reference:

| Type | Every Input has 1 Output? | Every Output is used? | Unique Pairing? | Function? |
| :--- | :---: | :---: | :---: | :---: |
| **Injective** | Yes | No (Optional) | Yes | ✅ |
| **Surjective**| Yes | Yes | No (Optional) | ✅ |
| **Bijective** | Yes | Yes | Yes | ✅ |
| **Relation** | No | No | No | ❌ |
