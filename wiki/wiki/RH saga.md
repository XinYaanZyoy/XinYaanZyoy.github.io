### S1E1 The Dream: Riemann Hypothesis and F1
src: [youtube](https://www.youtube.com/watch?v=YTCE2SXguwU)
- starts with [[Numbers as Functions by Yuri Manin]], four of the many clues in it:
	1. numbers as functions. buium's theory is one such way.
	2. periods appear both in [[number theory]] and [[Quantum Field Theory]].
	3. $\mathbb{F}_1$ theory might be connected to lambda-rings and roots of unity. these ideas come from theories of borger, kapranov, and smirnov.
	4. a hope to reach RH and $\mathbb{F}_1$-geometry through a deeper understanding of the analogy with curves over finite fields ($\mathbb{F}_q$-geometry).

- an overview of the history of [[Riemann hypothesis]] is in [[Riemann's hypothesis by Brian Conrey]], three of the many clues in it:
	1. study not just [[riemann zeta function]] but also L-functions, via selberg class and fmailies of L-functions.
	2. RH for general L-fs can be formulated in terms of positivity, one such positivity is Li's criterion.
	3. $\mathbb{F}_q$-geometry in both the papers, but the latter one mentions it in the language of function fields. might lead to new ideas about $\mathbb{F}_1$-geometry.

### S1E2 L-functions and the Langlands program
src: [youtube](https://www.youtube.com/watch?v=4bzSFNCiKrk&t=4s)
- I LOVE this beautiful thing. ![[Pasted image 20230706001619.png]]
- I do understand the first duality, especially because of [[Geometrical Anatomy of Physics by Frederic Schuller]], and ofc the second one is just a notation of some sort(?) or perhaps a special case of something [[Frederic Schuller]] mentions in his [[Lectures on Quantum Theory by frederic schuller]]. the third duality is something I am not sure i understand, though I do understand them individually. given this context, it feels like [[L-function]] is something that's not that mysterious!
- the goal is to understand the following two (motivic) L-functions:
```
  sage: NumberField(x^2+1,"x").zeta_coefficients(20)
  [1, 1, 0, 1, 2, 0, 0, 1, 1, 2, 0, 0, 2, 0, 0, 1, 2, 1, 0, 2]
  
  sage: EllipticCurve("14.a5").anlist(20)
  [0, 1, -1, -2, 1, 0, 2, 1, -1, 1, 0, 0, -2, -4, -1, 0, 1, 6, -1, 2, 0]
  ```
  where ["14.a5"](https://www.lmfdb.org/EllipticCurve/Q/14/a/5) is defined on [[The L-functions and modular forms database]]. understanding this "algorithm" and the underlying pattern is an instance of [[Langland's Program]]!
- The Pan Flute of L-functions! the automorphic L-function gives the motivic one, passing(?) through the [[riemann zeta function]]. ![[Pasted image 20230706015441.png]]
- so, $x^2+1=0$ is associated with [[Complex Numbers]] $R[i]$, and a subset of it is the [[Gaussian Integers]] $Z[i]$. the [[Euclidean Norm]](?) on this subset gives a lattice, and then counting of frequencies modulo the rotations give us the Dirichlet coefficient sequence associated with the(?) corresponding L-function.
- it's a forest program really! ![[Pasted image 20230706024011.png]]
- **perhaps try again understanding the 2nd L-function**
- checkout [[The L-functions and modular forms database#Universe]]
- checkout [[Langlands Reciprocity; L-functions, automorphic forms, and diophantine equations by Emerton]] for a more detailed introduction.

### S1E3 The Generalized Riemann Hypothesis
src: [youtube](https://www.youtube.com/watch?v=5RjrczAOxqg)
