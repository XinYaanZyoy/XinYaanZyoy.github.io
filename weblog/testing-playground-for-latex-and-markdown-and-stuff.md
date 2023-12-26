testing playground for latex and markdown and stuff

### 1 LateX Testing

#### 1.1 Greek Alphabet

llet's test some latex by typing, inline, my name in greek $\pi\alpha\rho\theta$.

#### 1.2 Mathematics

here's a definition of riemann integral, printing in block mode: 
\begin{equation}
	\int_a^b f(x)dx = (b-a) \lim_{n \to \infty} \frac1n \sum_{i=0}^n f(x_i)
\end{equation}

some of the latex fonts: $\mathbb{X}$, $\mathcal{X}$, $\mathscr{X}$, $\mathfrak{X}$

#### 1.3 Footnotes

here ^[this is footnote! it contains greeks alphs like $\alpha$ and an equation $\int_0^11=1$] is a footnote.

#### 1.4 Bibliography

let's also try testing bibliography thing. my whole zotero library is exported into a mylib.bib file, and it contains the rosetta paper [@baez_physics_2010] by sir john baez ^[[home page](https://math.ucr.edu/home/baez/)] on the most beautiful connection of Physics, Geometry, Logic, and Computation through the lense of Category Theory.

#### 1.5 Diagrams

oh, that reminds me of commutative diagrams! the following is one such diagram.

![Coomutative diagram expressing the first isomorphism theorem ^[btw, I don't understand why this has a name at all! I mean this is just an instance of the fact that every map can be decomposed into three compositions: f = surj * bij * inj]](https://upload.wikimedia.org/wikipedia/commons/8/84/First_isomorphism_theorem_%28plain%29.svg)

unfortunately, I'm tired and figure refs don't seem to be working well, so I think i'll have to live with it. 

#### 1.6 Mathematics again
the identity matrix: 
\begin{equation}
	I = \begin{bmatrix}
		1 & 0 & 0 \\ 
		0 & 1 & 0 \\
		0 & 0 & 1
		\end{bmatrix}
\label{eq:matrix}
\end{equation}

a beautiful one: $e^{i\pi}+1=0$

and a basic one: $$(x+y)^n = \sum_{i=0}^n \binom{n}{i} x^{n-i}y^i$$

#### 1.7 Referencing

we can reference an equation from the document, how cool!? e.g. our identity matrix definition $\eqref{eq:matrix}$ is a cool lokking matrix of $\mathbb{R}^3$

#### 1.8 Physics

let's do some physics now!

classical dynamics $$\overrightarrow{F} = m \overrightarrow{a}$$

some natural inverse square forces:

\begin{equation} 
	\begin{aligned}
		\overrightarrow{F}_G = \frac{GMm}{r^2}\hat{r} \\ \overrightarrow{F}_E = \frac{KQq}{r^2}\hat{r} 
	\end{aligned}
\end{equation}

and a complete description of EM field in space:
\begin{equation}
	\begin{aligned}
		\nabla \cdot \overrightarrow{E} = \frac{\rho}{\epsilon_0} \\
		\nabla \times \overrightarrow{E} = -\frac{\partial B}{\partial t} \\
		\nabla \cdot \overrightarrow{B} = 0 \\
		\nabla \times \overrightarrow{B} = \mu_0 (\overrightarrow{J}+\epsilon_0 \frac{\partial E}{\partial t})
	\end{aligned}
\end{equation}

### 2 Markdown

#### 2.1 Text

let's test some markdown by typing **bold**, *italic*, _another italic_, __another bold__, and some of the following stuffs.

#### 2.2 Lists

this is list of ordinals:

	1. first
	2. second
	3. third and so on...

this is list of cardinals:

	- one
	- two
	- three and so on...

#### 2.3 Links

here's a link to my twitter: [XinYaanZyoy](https://twitter.com/XinYaanZyoy) and Mathstodon: [Mathstodon](https://mathstodon.xyz/@XinYaanZyoy)

let's try referencing a markdown tutorials, here's the [first](https://commonmark.org/help/tutorial/), and here's the [second](https://www.markdowntutorial.com/).

#### 2.4 Images

here's an "image" of monad: ![Picture of Monad](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e3/Monad.svg/480px-Monad.svg.png)

and that of instance of brahman: ![Picture of water ripples](https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Wassertropfen.jpg/320px-Wassertropfen.jpg)

#### 2.5 Quotes

now, this is a quote:

> the primary role of the classical theory is not in approximating the quantum theory, but in providing a framework for its interpretation. - Dirac, src: N.M.J Woodhouse, Geometric Quantization, OUP 1997

just know that new line can be inserted either by empty line or double spaces.

done, hoping for the best!

Tags: latex, markdown

