Sturm-Liouville Theory

This is my first [actual] weblog. I've got entrance about 3 months from now, but there're 2 other not-so-important entrances too 2 months frm now. the basic syllabus is Classical Mechanics, Quantum Mechanics, Electrodynamics, and Statistical Mechanics. I'll be doing most of those from Landau and Lifshitz, but before that I'd like to write few entries on some selected topics from [Physical] Mathematics. this is a first log of this series, which I'd like to call "Introduction to Physical Mathematics" ^[Please excuse my *confusion* of definition of subjects existing in the intersection of Physics and Mathematics. I'll write a seperate weblog for this very thing, but let me give myself some time to ripe my thoughts enough to, at least, sound like science!] but really I'm not, yet, well versed in this, neither am i educated enough in "Mathematical Physics" (in a sense of what Sir John Baez is doing), but I'm pretty good at two things: "Mathematical Physics" (in a sense of what's usually meant in indian undergrad courses) and "Mathematics" as in really the formal axiomatic study of the mathematical objects abstractly. I really do not think the undergrad course's Mathematical Physics is of any worth, except that it helps passing the indian entrances! so all of my weblogs are really about mathematics, for now. and later, sometimes alongside, I hope to transform them into "Physical Mathematics". We'll see if I ever learn what "Mathematical Physics" (in a sense of John Baez's works) actually is!

I'll, mostly, be following 2nd chapter of the book [@mohammed_abdelrahman_al-gwaiz_sturm-liouville_2008], which, to me, seems to be about "Mathematical Physics" (in a sense of undergrad) and also of "Abstract Mathematics". only the later one is of interest to me here, and I think the book itself tries to lean towards it too.

**Definition**: The SL Problem is an Eigenvalue problem 
\begin{equation}
	Lu + \lambda \rho(x) u = 0, x \in (a,b)
	\label{eq:L-operator}
\end{equation}
of a formally self-adjoint operator of the form
\begin{equation}
	L = \frac{d}{dx}\left(p(x)\frac{d}{dx}\right)+r(x)
	\label{eq:L-def}
\end{equation}
such that for real constants $\alpha_i$ and $\beta_i$ the following homogeneous boundary conditions are satisfied.
\begin{equation}
	\begin{gathered}
		\alpha_1 u(a) + \alpha_2 u'(a) = 0, |\alpha_1| + |\alpha_2| \gt0 \\
		\beta_1 u(b) + \beta_2 u'(b) = 0, |\beta_1| + |\beta_2| \gt0
	\end{gathered}
	\label{eq:L-BCs}
\end{equation}

okay, that was definition of the problem stated straight away. In physics, the laws of nature are modeled by mathematical objects. let's not go into the discussion of whether coninuousness or discreteness is fundamental physically, but classically, where continuity is assumed a priori, all the models are some sort of ODEs/PDEs. well, we could talk about the algebraic duals of such analytic objects, but let's not go there either. so really, what is saught is solutions of those "physical" equations, e.g. Newton's 2nd law, heat flow, or any physical phenomena modeled with classical PDEs like laplace, heat, and wave equations. it turns out, the function space of all solutions of a given such equation is nice enough under certain boundary conditions. this whole philosophy can be united into one theory of problems similar to those models of physical phenomena, and this is exactly what the SL problem/theory is! when solutions of such physical problems are assumed to have a nice form like $u(x,t)=X(x)T(t)$, which is where sepration of variables method begin, the solution of the corresponding equation for T is usually easy. the real story begins with trying to solve the corresponding equation for X(x). SL theory is really about these solutions, the solutions of the linear second-order homogeneous differential equation

\begin{equation}
	p(x)y'' + q(x)y' + r(x)y = 0
	\label{eq:homo-de}
\end{equation}

which from the eye of differential operators on the function vector space looks like $\eqref{eq:L-def}$

\begin{equation}
	\begin{gathered}
		Ly=0, y \in \mathcal{L}^2(I) \cap C^2(I) \\
		L = p(x)\frac{d^2}{dx^2} + q(x)\frac{d}{dx} + r(x)
	\end{gathered}
\end{equation}


Tags: sturm-liouville, physics, function-spaces

