src: [github org](https://github.com/haskell-beginners-2022) 

#### Lec 1
- Arithmetic, Order, Logic.
- Types numbers and functions.
- List: formation, concatination, append at front, type, head-tail/last-init (throws exception). reverse, take, drop, null, elem, concat, , length, index operator (!!). (last two are slow/linear-time). rnages, infinite list.
- lazy evaluation: eval expr only when needed. take from infinite list. taking by index of an incorrect list will not produce exception!
- string is a list of char, though not the best way. show, words, unwords.
- function def, loafing module, if-then-else, guards, let-in, where
- immutability and no loops: use recursion! e.g. sum/freq of a list
- higher-order-function/first-pass-functions, e.g. (int->int->int)->int->int
- lambda functions. e.g. (Int->Bool)->Int->String
- **a function to Bool is called predicate** LOVE THIS ONE!
- partial application: 
- standard HOFs: map, filter, any, concatMap, iterate
- list of functions
- **everything is a function**
- ?Functions are automatically curried. No need to use special syntax for calling functions, just space is enough.

#### Lec 2
- Pattern matching: case-of, 