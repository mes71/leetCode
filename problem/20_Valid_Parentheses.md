## [20. Valid Parentheses](https://leetcode.com/problems/valid-parentheses/description/) <img src="../assets/esay.svg" width="100" style="vertical-align: middle; margin-right:4px;"  alt="level"/>

## Problem: Valid Parentheses

Given a string `s` containing just the characters `'('`, `')'`, `'{'`, `'}'`, `'['` and `']'`, determine if the input string is valid.

An input string is valid if:

1. Open brackets must be closed by the same type of brackets.
2. Open brackets must be closed in the correct order.
3. Every close bracket has a corresponding open bracket of the same type.

---

### Example 1:

**Input:** `s = "()"`  
**Output:** `true`

---

### Example 2:

**Input:** `s = "()[]{}"`  
**Output:** `true`

---

### Example 3:

**Input:** `s = "(]"`  
**Output:** `false`

---

### Example 4:

**Input:** `s = "([])"`  
**Output:** `true`

---

### Constraints:

- `1 <= s.length <= 10⁴`
- `s` consists of parentheses only: `'()[]{}'`
