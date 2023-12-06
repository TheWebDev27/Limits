#set par(
  leading: .75em
)

#set text(
    font: "New Computer Modern",
    size: 16pt
)

#set align(center)

#text(weight: "bold")[Real and Nonstandard Analyses: An Overview] \

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

$A = {"red, blue, yellow"}.$

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

Plotting the points generated by $f(x)$ on the XY coordinate plane produces the following graph:

#set align(center)

#set text(9pt)

#figure(
    image("images/parabola.png", width: 55%),
    caption: [f(x) produces a parabolic curve]
)

#set text(10pt)

#set align(left)

*Limits* analyze how the outputs of such functions behave as their inputs ($x$) approach either a particular point or $infinity$. For example, the parabolic function above approaches 4 as $x$ approaches $2$ and is denoted like so:

#set align(center)

$lim_(x -> 2)x^2=4.$

#set align(left)

As $x$ approaches $infinity$, $x^2$ also approaches $infinity$:

#set align(center)

$lim_(x -> infinity)x^2 = infinity.$

#set align(left)

Limits are a result of *analysis*, an area of mathematics that deals with continuous change and continuous functions, broadly speaking. I intend to not only explore and compare two different branches of analysis that ultimately lead to the same results encountered in calculus, but to do so in a meticulously pedagogical manner. One branch relies on a rigorous definition of the limit, while the other abandons the idea of limits entirely in favor of a concept utilized in the upbringing of calculus over the past several centuries. 

#set align(center)

#v(20pt)

= The Standard Approach

#set align(left)

#text(14pt)[
  Introduction
]

*Real analysis* is the study of functions, sequences, and sets involving real numbers, and it is used as the traditional means of formalizing the mechanisms presented in calculus courses. This overview of how real analysis builds toward certain calculus principles will follow section A.2 of Appendix A in 

#set align(center)

Simmons, G. (1996). _Calculus With Analytic Geometry_ (2nd ed.), Mcgraw-Hill Education.

#set align(left)

Being mindful of the fact that the absolute value of the difference between any two values, $abs(a-b)$, represents the distance between them will help greatly in understanding the notation that follows. The limit is defined like so:

#set text(font: "Source Serif")
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

#set text(font: "New Computer Modern")
#set align(left)

This definition states that $f(x)$ approaches some value $L$ as $x$ approaches a some number $c$ if it can be shown that, for any set of outputs that lie within some distance $epsilon$ from $L$, there exists a corresponding set of inputs ($x$'s) that lie within some distance $delta$ from $c$ which _guarantees_ that $f(x)$ falls within $epsilon$ of $L$. In this sense, we can bring the range of outputs as close as we want to $L$ ($epsilon arrow 0$) while being absolutely sure that $f(x)$ lies within it. This is known as the *epsilon-delta definition* of the limit.

#set text(9pt)

#figure(
    image("images/epsilon-delta limit.png", width: 65%),
    caption: [Epsilon-delta definition of the limit visualized]
)

#set text(10pt)

The interval $(L-epsilon, L+epsilon)$ describes the range of outputs that lie within a distance $epsilon$ from $L$. One detail to note in Figure 2 is the presence of $delta_1$ and $delta_2$. This is because the $x$ corresponding to $L - epsilon$ does not necessarily lie the same distance away from $c$ as the $x$ corresponding to $L + epsilon$, since the rate at which $f(x)$ changes may vary as $x$ sweeps from $c - delta_1$ to $c + delta_2$. To illustrate this, notice how the curvature of the curve is steeper on the left-hand side of $c$ compared to that on the right-hand side. This means that sweeping through some range of outputs on the left requires a smaller increment of $x$ as opposed to sweeping through that same range of outputs on the right, since the output of the function increases at a faster rate on the left. Therefore, $delta_1 < delta_2$ for this particular graph, and keep in mind that they do not represent $x$ values but rather _distances_ from $x=c$.

This complication can be readily resolved by letting $delta$ equal the smaller of $delta_1$ and $delta_2$:

#set align(center)

$delta = min(delta_1 , delta_2)$.

#set align(left)

$min()$ is shorthand for taking the smallest value amongst the set of numbers present between the parentheses. For instance, if $x = min(1, 2, 3)$, then $x = 1$. Allowing $delta$ to be defined in this way works because of the following reasoning: Assume that $delta_1 < delta_2$ and that $|x - c| < delta_2$ implies $|f(x) - L| < epsilon$ for some input $x$. If $|x - c| < delta_1$, then $|x - c| < delta_2$ since $delta_1 < delta_2$. It is therefore assured that $|f(x) - L| < epsilon$. \ \

#text(14pt)[
  Employing the Definition
]

The epsilon-delta definition of the limit can now be used to prove various properties of functions. As a basic example, consider the following theorem:

#set text(font: "Source Serif")
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

#set text(font: "New Computer Modern")
#set align(left)

In order to prove this limit, we need to demonstrate that for any set of outputs that lie within $epsilon$ of the limit ($a$), there exists a corresponding set of inputs that lie within $delta$ of $x=a$ ensuring that the output of $f(x)=x$ lies within  $epsilon$ from $a$.

To start, choose some $epsilon > 0$, and let $delta = epsilon$. For any $x$ satisfying the inequalities $0 < |x - a| < delta$, we know that $|f(x) - a| < epsilon$. This is because $f(x) = x$, and $delta = epsilon$. The theorem is therefore proven, as for any set of outputs that lie within $epsilon$ of $a$, we've found an appropriate value of $delta$ that satisfies the definition of the limit.

#pagebreak()


We can also prove some essential limit laws: their sums, differences, products, and quotients. 

#set text(font: "Source Serif")
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
            [(i)], $lim_(x -> a)[f(x) + g(x)] = L + M$,
            [(ii)], $lim_(x -> a)[f(x - g(x))] = L - M$,
            [(iii)], $lim_(x -> a)f(x)g(x) = L M$,
            [(iv)], $display(lim_(x -> a)f(x)/g(x) = L/M)$
        )
    ]
)

#set text(font: "New Computer Modern")
#set align(left)

To prove (i), we let $epsilon > 0$ be given and allow $delta_1, delta_2 > 0$ where

#set align(center)

$0 < |x - a| < delta_1 => |f(x) - L| < 1/2 epsilon$

#set align(left)

and

#set align(center)

$0 < |x - a| < delta_2 => |f(x) - M| < 1/2 epsilon$.

#set align(left)

For those unfamiliar with the $=>$ symbol, it means that the statement following it is implied (or logically follows) from the statement preceding the symbol.

The $1/2$'s in front of the $epsilon$'s may cause some confusion, but recall that when $lim_(x -> c)f(x) = L$, the epsilon-delta definition tells us that there exists a set of $x$'s lying within some distance $delta$ from $c$ such that the distance between $f(x)$ and $L$ is always less than $epsilon$. Knowing this, it then follows that if there exists $delta > 0$ such that $|f(x) - L| < 1/2 epsilon$ for some $epsilon > 0$, then $|f(x) - L| < epsilon$, because $1/2 epsilon$ is smaller than $epsilon$.

Continuing the proof, we let $delta = min(delta_1, delta_2)$. If $0 < |x - a| < delta$, then

#set align(center)

$abs([f(x) + g(x)] - (L + M)| &= |[f(x) - L] + [g(x) - M]) #h(40pt) &(1)\
    &<= |f(x) - L| + |g(x) - M| &(2)\
    &< 1/2 epsilon + 1/2 epsilon = epsilon, &(3)$

#set align(left)

proving (i). Analyzing the three-step sequence above in further detail: (1) takes advantage of the associative property of addition and moves terms around. (2) is a subtle application of the distances variation of the *triangle inequality* which states that, for real numbers $x$ and $y$,

#set align(center)

$|x + y| <= |x| + |y|$.

#set align(left)

It essentially says that the distance between 0 and the sum of two numbers can be no more than the combined distances of $x$ to 0 and $y$ to 0. For example, if $x=3$ and $y=-1$, then 

#set align(center)

$abs(x+y)=abs(3-1)=2<4=abs(3)+abs(-1)=abs(x)+abs(y)$. 

#set align(left)

While a formal proof is omitted, it may help to think of this inequality in terms of walking in two opposite directions. In particular, let positive numbers represent walking forward one way, while negative numbers represent walking backwards the other way. Therefore, if 0 is the position where you start, $abs(x+y)$ represents the distance you end at from 0 after some combination of walking forwards and backwards, while $abs(x) + abs(y)$ represents the #emph[total] distance walked. The distance you end at from 0 can only ever be as large as the total distance walked (by walking only forwards or only backwards), so $|x + y| <= |x| + |y|$. In the case of (2), the two values involved in the triangle inequality are $f(x) - L$ and $g(x) - M$.

Finally, (3) substitutes both $|f(x) - L|$ and $|g(x) - M|$ for $1/2 epsilon$. Since $|f(x) - L| < 1/2 epsilon$ and $|g(x) - M| < 1/2 epsilon$, it follows that $|f(x) - L| + |g(x) - M| < 1/2 epsilon + 1/2 epsilon$. The theorem is ultimately proven, because the difference between the function, $f(x) + g(x)$, and the desired limit, $L + M$, was shown to be less than any $epsilon > 0$ given an appropriate $delta$.

#pagebreak()

#set text(font: "Source Serif")

*(ii)* $lim_(x -> a)[f(x - g(x))] = L - M$

#set text(font: "New Computer Modern")

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

$abs([f(x) - g(x)| - (L - M)]) &= abs([f(x) - L] + [M - g(x)]) \
    &<= |f(x) - L| + |M - g(x)| \
    &= |f(x) - L| + |g(x) - M| \
    &< 1/2 epsilon + 1/2 epsilon = epsilon,$

#set align(left)

proving (ii). \ \

#set text(font: "Source Serif")

*(iii)* $lim_(x -> a)f(x)g(x) = L M$

#set text(font: "New Computer Modern")

Proving (iii) is more complicated. We begin by adding and subtracting $f(x)M$ to help relate the quantity $f(x)g(x) - L M$ to the differences $f(x) - L$ and $g(x) - M$:

#set align(center)

$|f(x)g(x) - L M| &= |[f(x)g(x)-f(x)M] + [f(x)M - L M]| \
    &<= |f(x)g(x) - f(x)M| + |f(x)M - L M| (triangle.filled.t #text[ inequality]) \
    &= |f(x)||g(x) - M| + |M||f(x) - L| \
    &<= |f(x)||g(x) - M| + (|M| + 1)|f(x) - L|. #h(31pt) (4)$

#set align(left)

Provided some $epsilon > 0$, it is certain that $delta_1, delta_2, delta_3 > 0$ all exist where

#set align(center)

$0 < |x - a| < delta_1 &=> |f(x) - L| < 1 => |f(x)| < |L| + 1; #h(40pt) &(5)\
    display(0 < |x - a| < delta_2 &=> |g(x) - M| < 1/2 epsilon(1 / (|L| + 1))); &(6)\
    display(0 < |x - a| < delta_3 &=> |f(x) - L| < 1/2 epsilon(1/(|M| + 1))). &(7)$ 

#set align(left)

The first implication in (5) comes from the fact that $lim_(x -> a)f(x) = L$, so a $delta_1 > 0$ exists for every $epsilon > 0$, and $epsilon$ is set to 1. To see why the second implication in (5) is valid, consider this: We know by the expression $abs(f(x) - L) < 1$ that the distance between the quantities $f(x)$ and $L$ is less than 1. Now if we think of $abs(f(x))$ as the distance $f(x)$ lies from 0 and $abs(L)$ as the distance $L$ lies from 0, then $abs(L) + 1$ has to be larger than $abs(f(x))$, so $abs(f(x)) < abs(L) + 1$. The reader is encouraged to think about this carefully until they feel absolutely certain of the validity in this argument.

#set align(left)

While (6) and (7) may look confusing, they once again stem from the definition of the limit. For #v(-2pt)instance, since $lim_(x -> a)g(x) = M$, a $delta_2 > 0$ exists for every $epsilon > 0$. Since $display(1/2 dot 1/(abs(M) + 1) < 1)$, this means $display(1/2 epsilon(1/(abs(M) + 1)) < epsilon)$, so the inequalities are indeed valid.
\ 
#v(0pt)Resuming the proof, we let $delta = min(delta_1, delta_2, delta_3)$. Then

#set align(center)

$0 < |x - a| < delta => |f(x)g(x) - L M| < 1/2 epsilon + 1/2 epsilon = epsilon$,

#set align(left)

proving (iii). This final step is justified as so: (4) showed that 

#set align(center)

$|f(x)g(x) - L M| <= |f(x)||g(x) - M| + (|M| + 1)|f(x) - L|.$

#set align(left)

#v(3pt) Since $|f(x)| < |L| + 1$ from (5), and $display(|g(x) - M| < 1/2 epsilon(1/(|L| + 1)))$ from (6),

#set align(center)

#v(5pt) $display(|f(x)||g(x) - M| < (|L| + 1)[1/2 epsilon(1/(|L| + 1))] = 1/2 epsilon)$.

#set align(left)

Since $|f(x) - L| < 1/2 epsilon(1/(|M| + 1))$,

#set align(center)

$display((|M| + 1)|f(x) - L| < (|M| + 1)[1/2 epsilon(1/(|M| + 1))] = 1/2 epsilon)$,

#set align(left)

justifying the final step. \ \

#set text(font: "Source Serif")

*(iv)* $display(lim_(x -> a)f(x)/g(x) = L/M)$

#set text(font: "New Computer Modern")

To prove (iv), we take advantage of the fact that

#set align(center)

$display(lim_(x -> a)[f(x)/g(x)] = lim_(x -> a)[f(x) dot 1/g(x)])$

#set align(left)

due to (iii), so all that is required is to show that

#set align(center)

$display(lim_(x -> a)[1/g(x)] = [1/M])$.

#set align(left)

If $g(x) != 0$, then

#set align(center)

$#h(78pt) display(abs(1/g(x) - 1/M) = abs(g(x) - M)/(|M||g(x)|)) #h(78pt)$ $(1)$

#set align(left)

Let $delta_1 > 0$ where

#set align(center)

$#h(50pt) 0 < |x - a| < delta_1 => |g(x) - M| < 1/2 |M| #h(50pt) (2)$

#set align(left)

so that

#set align(center)

$|g(x)| &> 1/2|M| \

display(1/(|g(x)|) &< 2/(|M|))$

#set align(left)

which means

#set align(center)

#h(65pt) $display(abs(1/g(x) - 1/M) < 2/(|M|^2) abs(g(x) - M))$. #h(65pt) (3)

#set align(left)

From (2), we know that the distance between $g(x)$ and $M$ is smaller than $1/2 |M|$. This means that 

#v(0pt) $1/2 abs(M) < abs(g(x)) < 3/2 abs(M)$, so $abs(g(x)) > 1/2 abs(M)$. (3) is achieved by substituting $display(1/abs(g(x)))$ on the right hand side 

#v(-3pt) of (1) with $display(2/abs(M))$.

Let $epsilon > 0$ be provided and $delta_2 > 0$ such that

#set align(center)

$0 < abs(x - a) < delta_2 => abs(g(x) - M) < display(abs(M)^2/2) epsilon$.

#set align(left)

If $delta = min(delta_1, delta_2)$, then

#set align(center)

$0 < abs(x - a) < delta =>display(abs(1/g(x) - 1/M)) < display(2/abs(M)^2) dot display(abs(M)^2/2) epsilon= epsilon$,

#set align(left)

#v(3pt) the final step coming from substituting $abs(g(x) - M)$ in (3) with $display(abs(M)^2/2 epsilon)$. This concludes the proof of (iv) #v(-3pt) and ultimately Theorem 2 in its entirety. It is interesting seeing how the limit laws are, in essence, results of sequences of subtle algebraic manipulations.

#pagebreak()

The final application of the epsilon-delta limit that will be analyzed is the classic *squeeze theorem*. 

#set text(font: "Source Serif")
#set align(center)

#grid(
    columns: 80%,
    rows: auto,
    [
        #set align(left)

        *Theorem 3 - Squeeze Theorem* \
        If there exists a $p > 0$ where

        #set align(center)

        $g(x) <= f(x) <= h(x)$

        #set align(left)

        for all $x$ satisfying the inequalities $0 < abs(x - a) < p$, and if $lim_(x -> a)g(x) = L$ and $lim_(x -> a)h(x) = L$, then

        #set align(center)

        $lim_(x -> a)f(x) = L$
    ]
)

#set text(font: "New Computer Modern")
#set text(9pt)

#figure(
    image("images/squeeze theorem.png", width: 70%),
    caption: [Squeeze theorem visualized]
)

#set text(10pt)

#set align(left)

If a function $f(x)$ is bounded between two other functions $g(x)$ and $h(x)$, and $g(x)$ and $h(x)$ both approach the same limit $L$ as $x arrow a$, then $f(x)$ is "squeezed" toward $L$. For example, consider the functions $f(x)=x^2 cos (1/(x^2)), g(x) = x^2,$ and $h(x)=-x^2$ displayed in Figure 3. We can show that $x^2cos(1/(x^2))$ lies in between $x^2$ and $-x^2$ like so:

#set align(center)

$display(-1 <= cos(1/(x^2)) <= 1 \
    -x^2 <= x^2cos(1/(x^2)) <= x^2).$

#set align(left)

Since $lim_(x -> 0)-x^2 = lim_(x -> 0)x^2 = 0$, the squeeze theorem tells us that $lim_(x -> 0)x^2cos(1/(x^2)) = 0$.

To prove the theorem, let $epsilon > 0$ be provided, and choose $delta_1, delta_2 > 0$ where

#set align(center)

$0 < abs(x - a) < delta_1 => L - epsilon < g(x) < L + epsilon$

#set align(left)

and

#set align(center)

$0 < abs(x - a) < delta_2 => L - epsilon < h(x) < L + epsilon$

#set align(left)

Let $delta = min(p, delta_1, delta_2)$. Then

#set align(center)

$0 < abs(x - a) < delta => L - epsilon < g(x) <= f(x) <= h(x) < L + epsilon \
    L - epsilon < f(x) < L + epsilon \
    abs(f(x) - L) < epsilon$

#set align(left)

and thus the theorem is proven.

#pagebreak()

As a whole, we see how real analysis employs a delicate system of distances and algebraic operations in order to concisely define what exactly a limit is and how its definition can be used to prove related theorems. This system is then used as a base to build up toward various other ideas in calculus including differentiation and integration. Such details will not be covered, as 

#set align(center)

#grid(
    columns: 90%,
    rows: auto,
    [
        #set align(left)

        1) The goal here is to merely gain a baseline understanding of the nature of the argumentation present in real analysis and \ 2) They warrant a deeper level of study far beyond the scope of my efforts. We will, however, get to see how the next field of analysis approaches various ideas of calculus without the concept of limits. \ \
    ]
)

