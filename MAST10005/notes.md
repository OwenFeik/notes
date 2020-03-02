# Sets

## Common Sets
* **N** is the set of positive integers -> {1, 2, 3, 4, ...}
* **Z** is the set of all integers -> {..., -1, 0, 1, 2, 3, ...}
* **Q** is the set of rational numbers, those that can be written as fractions
* **R** is the set of real numbers.
* **C** is the set of complex numbers.

**N** is a subset of **Z** is a subset of **Q** is a subset of **R** is a subset of **C**.

Some numbers cannot be written as fractions, and these we describe as irrational. These include \pi, ***e***, sqrt(2), etc. These numbers are not in **Q**, but they are real numbers, i.e. in **R**. It can be difficult to prove numbers are irrational. An even larger set of numbers exists, that of the complex numbers **C**. "Most" real numbers are inrrational.

## Denoting Membership

If **A** is a set, saying *x* \element **A** means *x* is in the set **A**. We can also use \notelement to denote non-membership. Sets can be expressed as 2-dimensional regions, with points within them as elements.

* *n* \element **Z** means *n* is an integer.
* *x* \element **Q** means *x* can be expressed as a fraction.

## Desciptive Notation

Descriptive notation is a way of defining a set by stating a property which all of its elements possess. 

For example: **A** = {*x* \element **R** | *x* ^ 2 + 1 > 37}

Which can be read as the set of all real numbers *x* such that *x* ^ 2 + 1 > 37. The statement must be a "predicate"; it must be true or false for all values. The vertical bar is read as "such that". A colon is sometimes used instead.

### Examples:

* Express the set of real numbers whose natural (base ***e***) logarithm is positive with descriptive notation: {*x* \element **R** | log(x) > 0}. Note that log(x) denotes loge(x). There is however an issue with this answer; because log(x) is sometimes undefined, "log(x) > 0" is not a predicate. The set could instead be expressed as {x \element **R**>0 | log(x) > 0} **R>0** = {x \element **R** | x > 0}.
* Express the set of integers whose cube is even in descriptive notation: {n \element **Z** | n ^ 3 is even}.
* Describe the set { n \element **N** | sin(n) > 0 } in words: the set of all natural numbers n such that sin(n) is greater than 0.

## Abbreviated Notation

Set notation is often abbreviated. For example {x \element **R** | sin(x) = 0} could be expressed as {*k* * pi | *k* \element **Z**}. This will be all integers multiplied by pi. This could also be expressed as {x \element **R** | x = k * pi for some k \element **Z**}

### Examples

* Express teh set of odd integers in abbreviated set notation: {2 * *k* + 1 | k \element **Z**} or {2 * *k* - 1 | *k* \element **Z**}.
* Express the set {x \element **R** | cos(x) = 0}: {pi / 2 + *k* * pi | k \element **Z**}
