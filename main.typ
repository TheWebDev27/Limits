#show heading: set text(size: 14pt)

#set text(
    font: "New Computer Modern",
    size: 16pt
)

#set align(center)

#text(weight: "bold")[The Classical and Nonstandard  Analyses of Limits] \

#set text(
    size: 12pt
)

Preston Vo \ \ \

#set text(
    size: 10pt
)

#set align(center)

= Introduction

#set align(left)

A *set* is a collection of elements. These elements can be anything: numbers, shapes, colors, and so on. For instance, consider the set A of the primary colors:

#set align(center)

$A = {"red, blue, yellow"}$

#set align(left)

A *function* is a mapping between the elements of two sets where each element from one set is assigned to exactly one element from the other. In the realm of single variable calculus, functions predominantly deal with sets of real numbers. For example, the function

#set align(center)

$f(x)=x^2$

#set align(left)

takes a set of inputs (x) and produces a corresponding set of their squares f(x) in the form of *ordered pairs*:

#set align(center)

#table(
    columns: (auto, auto),
    inset: 7pt,
    align: center,
    [x], [f(x)],
    $-3$, $9$,
    $-2$, $4$,
    $-1$, $1$,
    $0$, $0$,
    $1$, $1$,
    $2$, $4$,
    $3$, $9$
)

#set align(left)

Plotting these points on the XY coordinate plane produces the following graph:

#set align(center)

#figure(
    image("images/parabola.png", width: 55%),
    caption: [f(x) produces a parabolic curve]
)

#set align(left)

*Limits* analyze how the outputs of such functions behave as their inputs ($x$) approach either a particular point or $infinity$. For example, the parabolic function above approaches 4 as $x$ approaches $2$ and is denoted like so:

#set align(center)

$lim_(x -> 2)x^2=4$

#set align(left)

As $x$ approaches $infinity$, $x^2$ also approaches $infinity$:

#set align(center)

$lim_(x -> infinity)x^2 = infinity$

#set align(left)

I intend to explore two approaches of rigorously defining the limit. The first employs the *epsilon-delta* definition of the limit, while the second utilizes the concept of *hyperreal numbers*.

#set align(center)

#v(20pt)

= The Classical Approach

#set align(left)

#text(14pt)[
  The Definition
]

*Real analysis* is essentially the rigorous version of calculus. It seeks to strictly define and prove the mechanisms and ideas presented in calculus. For this section, I will be following section A.2 of Appendix A of 

#set align(center)

Simmons, G. (1996). _Calculus With Analytic Geometry_ (2nd ed.) Mcgraw-Hill Education.

#set align(left)

Being mindful of the fact that the absolute value of the difference between two values ($|a - b|$) represents the distance between them will greatly aid in understanding the notation below. The limit is defined in the following manner:

#set align(center)

#grid(
    columns: 80%,
    rows: auto,
    [
        #set align(left)

        Let a function $f(x)$ be defined on some interval containing the number $c$ such that there are $x$'s in the domain of $f(x)$ where

        #set align(center)

        $0 < |x - c| < delta$

        #set align(left)

        for every positive number $delta$. The statement

         #set align(center)

        $lim_(x -> c)f(x) = L$
    ],
    [
        \
        \
    ],
    [
        #set align(left)

        is then defined like so: For every positive number $epsilon$, there exists a positive number $delta$ such that

        #set align(center)

        $|f(x) - L| < epsilon$

        #set align(left)

        for every $x$ in the domain of $f(x)$ where

        #set align(center)

        $0 < |x - c| < delta$
    ]
)

#set align(left)

This definition states that $f(x)$ approaches $L$ as x approaches a certain value $c$ if it can be shown that, for any set of outputs that lie within some distance $epsilon$ from $L$, there exists a corresponding set of inputs ($x$'s) that lie within some distance $delta$ from $c$ which _guarantees_ that $f(x)$ falls within said range of $L$. In this sense, we can bring the range of outputs as close as we want to $L$ (letting epsilon go to 0) while being absolutely sure that $f(x)$ lies within it. This is known as the *epsilon-delta definition* of the limit.

#figure(
    image("images/epsilon-delta limit visualization.png", width: 65%),
    caption: [Epsilon-delta definition of the limit visualized]
)

One detail to note in the visualization above (Figure 2) is the present of $delta_1$ and $delta_2$. This is because the $x$ corresponding to $L - epsilon$ does not necessarily lie the same distance away from $c$ as the $x$ corresponding to $L + epsilon$, since the rate at which $f(x)$ changes may vary as $x$ sweeps from $c - delta_1$ to $c + delta_2$. To illustrate this, notice how the curvature in the graph is steeper on the left-hand side of $c$ compared to the curvature on the right-hand side. This means that sweeping through some range of outputs on the left requires a smaller increment of $x$ as opposed to sweeping through that same range of outputs on the right. Therefore, $delta_1 < delta_2$ for this particular graph.

This complication can be readily resolved by letting $delta$ equal the smaller of $delta_1$ and $delta_2$:

#set align(center)

$delta = min(delta_1 , delta_2)$

#set align(left)

$min()$ is shorthand for taking the minimum value of the set of numbers present between the parentheses. Allowing $delta$ to be defined in this way works because of the following reasoning: Assume that $delta_1 < delta_2$ and that $|x - c| < delta_1$ implies $|f(x) - L| < epsilon$. If $|x - c| < delta_1$, then $|x - c| < delta_2$ since $delta_1 < delta_2$. It is therefore assured that $|f(x) - L| < epsilon$.

#v(20pt)

#text(14pt)[
  Employing the Definition
]

The epsilon-delta definition of the limit can now be used to prove various facts and properties. As a basic example, consider the following theorem:

#set align(center)

#grid(
    columns: 80%,
    rows: auto,
    [
        #set align(left)

        *Theorem 1* \
        If f(x) = x, then $lim_(x -> a)f(x) = a$, or

        #set align(center)

        $lim_(x -> a)x = a$
    ]
)

#set align(left)

To prove this, choose some $epsilon > 0$, and let $delta = epsilon$. For any $x$ satisfying the inequalities $0 < |x - a| < delta$, we know that $|f(x) - a| < epsilon$. This is because $f(x) = x$, and $delta = epsilon$. The theorem is therefore proven. 

We can also prove some essential limit laws: their sums, differences, products, and quotients. 

#set align(center)

#grid(
    columns: 80%,
    rows: auto,
    [
        #set align(left)

        *Theorem 2 - Limit Laws* \
        If $lim_(x -> a)f(x) = L$ and $lim_(x -> a)g(x) = M$, then

        #table(
            columns: (20pt, auto),
            align: (right, left),
            stroke: none,
            [(i)], $lim_(x -> a)[f(x) + g(x))] = L + M$,
            [(ii)], $lim_(x -> a)[f(x - g(x))] = L - M$,
            [(iii)], $lim_(x -> a)f(x)g(x) = L M$,
            [(iv)], $lim_(x -> a)f(x)/g(x) = L/M$
        )
    ]
)

#set align(left)

To prove (i), we let $epsilon > 0$ be given and allow $delta_1, delta_2 > 0$ where

#set align(center)

$0 < |x - a| < delta_1 => |f(x) - L| < 1/2 epsilon$

#set align(left)

and

#set align(center)

$0 < |x - a| < delta_2 => |f(x) - M| < 1/2 epsilon$.

#set align(left)

For those who are unfamiliar with the $=>$ symbol, it means that the statement following it is implied (or logically follows) from the statement preceding the symbol.

The $1/2$ in front of the $epsilon$'s may cause some confusion, but recall that when $lim_(x -> c)f(x) = L$, the epsilon-delta definition tells us that there exists a set of $x$'s lying within some distance $delta$ from $c$ such that the distance between $f(x)$ and $L$ is always less than $epsilon$. Knowing this, it is then clear that if there exists $delta > 0$ such that $|f(x) - L| < 1/2 epsilon$ for some $epsilon > 0$, then $|f(x) - L| < epsilon$ is also implied, because $1/2 epsilon$ is smaller than $epsilon$.

Continuing the proof, we let $delta = min(delta_1, delta_2)$. If $0 < |x - a| < delta$, then

#set align(center)

$|[f(x) + g(x)] - (L + M)| &= |[f(x) - L] + [g(x) - M]| \
    &<= |f(x) - L| + |g(x) - M| \
    &< 1/2 epsilon + 1/2 epsilon = epsilon,$

#set align(left)

proving (i). Analyzing the three-step sequence above in further detail: the first equality simply takes advantage of the associative property of addition and moves terms around. The inequality proceeding it is a subtle application of the distances variation of the *triangle inequality* which states that, for real numbers $x$ and $y$,

#set align(center)

$|x + y| <= |x| + |y|$.

#set align(left)

It essentially says that the distance between the sum of two numbers and 0 can be no more than the combined distances of $x$ to 0 and $y$ to 0. For example, let $x = 2$ and $y = 3$. Therefore, $|x + y| = 5 = |x| + |y|$. In general, $|x + y| = |x| + |y|$ when either a) both numbers are of the same sign or b) at least one of the numbers is 0. Let $x = -2$ and $y = 3$. We then have $|x + y| = 1 < |x| + |y| = 5$. In general, $|x + y| < |x| + |y|$ if $x,y != 0$ and are of opposite sign. It can ultimately be seen that $|x + y|$ is in fact less than or equal to $|x| + |y|$. As for the limit proof, the two values involved in the triangle inequality are $f(x) - L$ and $g(x) - M$. 

The final inequality simply substitutes both $|f(x) - L|$ and $|g(x) - M|$ for $1/2 epsilon$. Since $|f(x) - L| < 1/2 epsilon$ and $|g(x) - M| < 1/2 epsilon$, it follows that $|f(x) - L| + |g(x) - M| < 1/2 epsilon + 1/2 epsilon$. The theorem is ultimately proven, because the difference between the function, $f(x) + g(x)$, and the desired limit, $L + M$, was shown to be less than any $epsilon > 0$ given an appropriate $delta$.

The proof of (ii) is similar to that of (i). We once again allow $delta_1, delta_2 > 0$ where

#set align(center)

$0 < |x - a| < delta_1 => |f(x) - L| < 1/2 epsilon$

#set align(left)

and

#set align(center)

$0 < |x - a| < delta_2 => |f(x) - M| < 1/2 epsilon$.

#set align(left)

Let $delta = min(delta_1, delta_2)$. If $0 < |x - c| < delta$, then

#set align(center)

$|[f(x) - g(x)| - (L - M)] &= |[f(x) - L] + [M - g(x)]| \
    &<= |f(x) - L| + |M - g(x)| = |f(x) - L| + |g(x) - M| \
    &< 1/2 epsilon + 1/2 epsilon = epsilon,$

#set align(left)

proving (ii).