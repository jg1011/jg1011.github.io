# Swiss Subsets of $[n]$ 

Recently&mdash;in a desperate bid to revitalise my problem-solving faculties&mdash;I've found myself working through the book [102 Combinatorial Problems From The Training Of The USA IMO Team](https://rainymathboy.wordpress.com/wp-content/uploads/2011/01/102-combinatorial-problems.pdf). Working through the introductory problems started off as a breeze; then my ego took a fatal hit on question 11... 

> Determine the number of ways to choose five numbers from the first eighteen positive integers such that any two chosen numbers differ by at least two. 

Simple right? As stated, it was even simple enough for my seven year old sister to take a stab at it. Being&mdash;I hope&mdash;more mathematically mature than the teenagers preparing for the IMO, I chose to restate this problem more generally as 

> Determine the number of $k$-subsets of $[n]$ containing no two consecutive integers. 


where $[n] := \{1, \dots, n\}$ denotes the first $n$ positive integers. Let $f(k, n)$ be the aforementioned quantity, and recall our primary goal is compute $f(5, 18)$. For brevity, we'll call subsets with no two consecutive integers *$k$-funky*. 

Being a good mathematician, the reader is expected to attempt this problem themselves before continuing. Perhaps you'll solve it quickly and think less of me. Perhaps you'll also suffer through an ego death. Eitherway, go have a ponder; I'll be seeing you shortly. 

## First Thoughts

At first, nothing obvious jumps out; let's get the ball rolling with some small values. It makes sense to try and construct the smallest&mdash;in the sense of having the smallest maximal element&mdash;funky subset first. It is quite obvious that this is the first $k$ odd-numbers, giving us our first result.

**Proposition 1:** For all $k \in \mathbb{N}$ we have $n < 2k-1 \Rightarrow f(k, n) = 0$  

To prove this, we'll invoke an old classic: the pigeonhole principle (sometimes called Dirichlet's box principle). 

**Proof:** Choose $k$-funky $A = \{a_1, \dots, a_k\} \subseteq [n]$ sequentially. Consider the following three cases: 

- If $1 = a \in A$ then for all $a^\prime \in A \setminus \{a\}$ we have $a^\prime \neq 2$ 
- If $a \in A \cap \{2, 3, \dots, n-1\}$ then for all $a^\prime \in A \setminus \{a\}$ we have $a^\prime \not\in \{a \pm 1\}$ 
- If $n = a \in A$ then for all $a^\prime \in A \setminus \{a\}$ we have $a^\prime \neq n$ 

In any case, each selection $a_i$ reduces the available choices for a future selection by at least two, meaning to construct a $k$-funky subset we require 

$$n \geq 1 + (k-1) \times 2 = 2k - 1$$

This completes the proof. $\quad \square$

While a good start, this doesn't actually help us count anything. Lets move onto $f(k, 2k-1)$. It's reasonably obvious that this is just one, as $\{1, \dots, 2k-1\}$ is the only $k$-funky subset of $[2k-1]$. Indeed, an analogous argument proves this. 

No obvious argument to generalise yet, so onto $f(k, 2k)$. It is natural to postulate that our previously stated $k$-funky subset $\{1, \dots, 2k-1\}$ is $k$-funky here. After one internal "uhh" you should arrive at "obviously". This gives us our first lemma. 

**Lemma 1:** If $A$ is a $k$-funky subset of $[n]$ then it is also a $k$-funky subset of $[m]$ for all $m \geq n$. 

**Proof:** Ask a toddler in the street. $\quad \square$ 

So, we counted $k$-funky subsets of $[2k-1]$ by lemma 1, and by proposition 1 we know there are no $k$-funky subsets of $[m]$ for $m < 2k - 1$, so we deduce that any remaining $k$-funky subsets must contain $2k$. If you think about it for a moment, there's a nice way to count these. Start with $A = \{1, 3, 5, \dots, 2k-1\}$ and choose an element $2m-1 \in A$. If we add one to $2m-1$ and all the greater elements of $A$, we arrive at the $k$-groovy subset $A^\prime = \{1, 3, \dots, 2m-3, 2m, 2m+2, \dots,2k-2, 2k\} $. Given $\lvert A \rvert = k$ we thus count $k$ new $k$-groovy subsets. Is this all of them? It is, and can be shown with a similar proof (exercise!) to that of proposition 1. 

It turns out a very similar idea can be used to swiftly compute $f(n, k)$ (exercise: find it). After an amount of time I'm not willing to disclose, I gave up trying to find it and looked elsewhere.

## A Recursion 

Fixing $k$ and working inductively on $n$ didn't work out too well for me, so I decided to free myself from these fixed-$k$ shackles. We know by lemma 1 that $k$-funky subsets of $[n-1]$ are $k$-groovy subsets of $[n]$. Can we say something about the $k-1$-funky subsets of $[m], m < n$ and the $k$-groovy subsets of $[n]$? Well, if we fix a $k-1$-funky subset of $[n-2]$, we can just append $\{n\}$ to it to get a $k$-groovy subset of $[n]$. As the $k$-funky subsets of $[n-1]$ are distinct from these newly obtained $k$-groovy subsets of $[n]$ (the former subsets do not contain $n$, the latter do contain $n$), we see that 

$$f(n, k) \geq f(n-1, k) + f(n-2, k-1)$$

for all $n \geq 2k, k \geq 2$ (as we suppose a $k$-groovy subset of $[n-1]$ exists and we only define $k$-funkiness for $k \geq 1$). Does equality hold? It does!

**Lemma 2:** For all $n \geq 2k, k \geq 2$ we have $f(n, k) = (n-1, k) + f(n-2, k-1)$ 

**Proof:** We've already seen $\text{LHS} \geq \text{RHS}$, so it suffices to prove $\text{LHS} \leq \text{RHS}$. To that end, it suffices to decompose each $k$-funky subset of $[n]$ into either a $k$-funky subset of $[n-1]$ or a $k-1$-funky subsets of $[n-2]$. Let $A = \{a_1, \dots, a_k\} \subset [n]$ be $k$-funky and WLOG take $a_1 < \dots < a_k$. If $a_k < n$, then $A$ is clearly a $k$-funky subset of $[n-1]$. If $a_k = n$, then consider $A^\prime = A \setminus \{ a_k \}$. It is clear $A^\prime$ is a $k-1$-funky subset of $[n]$, and as $a_{k-1} \leq n-2$ we further deduce it is a $k-1$-funky subset of $[n-2]$ which completes the proof. $\quad \square$

Lovely. We have a recursion. If we solve it we win. Well it turns out winning isn't a simple affair. I wasted another undisclosed period of time expanding the RHS iteratively, looking for a nice computational lemma. This&mdash;assuming I'm not an idiot&mdash;won't get you anywhere. Let's instead look at some small values. Fix $k=1$. It is obvious every subset of $[n]$ is $1$-groovy, so $f(n, k) = n$. What about $k=2$? In this case, we can just compute 

$$
f(n, 2) = \# \, [n] \setminus \{\{i, i+1\} : i \in [n-1]\} = \binom{n}{2} - (n-1) = \binom{n-1}{2} 
$$

There is a natural conjecture to try (exercise: state it), but I thought to give $k=3$ an attempt first. In this case, it's not so easy to explicitly state the sets, so we'll invoke lemma 2. Fix $n \geq 6$, then 

$$
f(n, 3) = f(n-1, 3) + f(n-2, 2) = f(n-1, 3) + \binom{n-1}{2}
$$

What a delight, an arithmetic progression! We immediately solve in full generality to obtain 

$$
f(n, 3) = f(3, 5) + \sum_{\ell = 3}^{n-3} \binom{n-\ell}{2} = \sum_{\ell = 2}^{n-3} \binom{\ell}{2}
$$

where the latter inequality follows from $f(3, 5) = 1$ and reindexing the summation. Now, for those deeply embedded in olympiad circles, there's a nice identity that one-shots this summation. For the rest of us, we'll need some work. Recall the classical sum of squares formula 

$$
\sum_{k=1}^n k^2 = \frac{1}{6}n(n+1)(2n+1)
$$

Whether this is more well known than this afforementioned identity I'm not sure, but for I had this in readily accessible memory, and not the other identity, so we'll use it. It is a fun exercise to try to prove this without induction, see hint 1. Using $\binom{\ell}{2} = \frac{1}{2}\ell(\ell + 1)$ with our sum of squares formula, compute 

$$
\sum_{\ell = 2}^{n-3} \binom{\ell}{2} = \frac{1}{2}\left[\frac{1}{6}(n-3)(n-2)(2n-5) - 1 - \frac{1}{2} (n-3)(n-2) + 1\right] = \frac{1}{6} (n-4)(n-3)(n-2) = \binom{n-2}{3} 
$$

We now have clear grounds for a conjecture. Notice that each time we increment $k$ by $1$, we subtract $1$ from the top component of the binomial coefficient, and add one to the bottom component. Hence, by engineer's induction: 

$$
f(n, k) = \binom{n-k+1}{k}
$$

To prove this, we'll use mathematicians induction. 

**Proposition 2:** For all $k \geq 1, n \geq 2k-1$ we have $f(n, k) = \binom{n-k+1}{k}$ 

**Proof:** $k \geq 1$. We've seen a base case, so suppose that the proposition is true for some fixed $k \geq 1$ and all $n \geq 2k-1$. Using lemma 2 we see that 

$$
f(n, k+1) = f(n-1, k+1) + f(n-2, k) = f(n-1, k+1) + \binom{n-k-1}{k}
$$

for each $n \geq 2k + 1$. It is easily seen that

$$f(n, k+1) = \sum_{\ell = 0}^{n-2k - 1} \binom{k + \ell}{k}$$

Hence, by the [hockeystick identity](https://en.wikipedia.org/wiki/Hockey-stick_identity)

$$
f(n, k+1) = \binom{n-k}{k+1}
$$

and the proposition is proven. $\quad \square$

So what is this magical hockeystick identity? I admit I'd forgotten about it at the time of solving, left to rederive it. The identity states that 

$$
\sum_{\ell = k}^n \binom{\ell}{n} = \binom{n+1}{k+1}
$$

It derives it's name from the fact that, when drawn on Pascal's triangle, it looks like a hockeystick. There's a boring proof with induction, but let's assume for the moment we've never seen identity. How can we compute this sum? 

There's a nice algebraic way using the fact that 

$$
\binom{n}{k} = \binom{n-1}{k-1} + \binom{n-1}{k}
$$

Note that this identity corresponds with the usual construction of Pascal's triangle.

**Proof of the Hockeystick Identity**. Observe 

$$
\sum_{\ell = k}^n \binom{\ell}{k} = \sum_{\ell=k}^n \left[\binom{\ell+1}{k+1} - \binom{\ell}{k+1}\right] = \binom{n+1}{k+1}
$$

where the final equality follows from the telescoping nature of the summation. $\quad \square$

There's a nice combinatorial proof (exercise!) as well, but this doesn't arise as naturally. 

## A Bijection 

So, with all that work, we've found an answer; being a good combinator you won't be happy. Where's the bijection? Well, since we know the number of ways to count $k$-funky subsets of $[n]$ is the number of $k$-subsets of $[n-k+1]$ we have a good starting point: we'll try to biject $k$-funky subsets of $[n]$ with subsets $[n-k+1]$. 

Let $\mathcal{X}$ be the set of all $k$-funky subsets of $[n]$ and $\mathcal{Y} = \mathcal{P}([n-k+1])$ the set of subsets of $[n-k+1]$. We can map $\mathcal{X} \to \mathcal{Y},\,  \{a_1, \dots, a_k\} \mapsto \{b_1, \dots, b_k\}$ by taking $b_i := a_i - (i-1)$ and WLOG taking $a_1 < \dots < a_k$. To see how we arrive at this, we just make $a_k$ "small enough", and then try preserve the uniqueness of elements. If this map has an inverse we win. Indeed it does, just map $\mathcal{Y} \to \mathcal{X}, \, \{b_1, \dots, b_k\} \mapsto \{a_1, \dots, a_k\}$ where $a_i := b_i + (i-1)$ and WLOG $b_1 < \dots < b_k$. After a brief moment, it should become clear that $\{a_1, \dots, a_k\}$ is a $k$-funky subset of $[n]$. 

This idea corresponds with the official solution: 

> Let $a_1 < a_2 < a_3 < a_4 < a_5$ be the first five chosen numbers. Consider the numbers $(b_1, b_2, b_3, b_4, b_5) = (a_1, a_2 - 1, a_3 - 2, a_4 - 3, a_5 - 4)$. Then $b_1, b_2, b_3, b_4, b_5$ are five distinct numbers from the first fourteen positive integers. Conversely, from any five distinct numbers $b_1 < b_2 < b_3 < b_4 < b_5$ we can reconstuct $(a_1, a_2, a_3, a_4, a_5) = (b_1, b_2 + 1, b_3 + 2, b_4 + 3, b_5 + 4)$ to obtain five numbers satisfying the conditions of the problem. Ths we found a one-to-one mapping between the set of five numbers satsfying the given conditions and the set of five distinct numbers from the first fourteen positive integers. Therefore the answer is $\binom{14}{5} = 2002$. 

Insultingly simple, as combinatorial proofs often are. 

## An Extension 

Consider the following extension. 

> Call a subset $A$ of $[n]$ $m$-swiss if the distance between any two distinct elements in $A$ is greater than $m$. How many $m$-swiss subsets of $[n]$ are there of size $k$?

Note we've already counted the $1$-swiss subsets of size $k$. This is pretty easy (some would say trivial) given you've followed along this far. Verify you've followed by solving this. A hint is given below (2). 

## Concluding Remarks 

I feel that anyone learning to solve problems in combinatorics may feel like they need a certain amount of esoteric wisdom that they do not, and can not, possess. I hope this brief article (n.b. blog post? Whatever this counts as...) helps illustrate the non-linearity of the problem-solving process. 

Directly coming up with that bijection is no easy feat. In hindsight, it feels like I should've seen it around the time I was doing my "add one to all remaining elements" count for $f(2k, k)$ at the end of the first section. Those who've solved many similar problems may naturally try to find maps that turn $k$-funky subsets into known (in the sense of being readily countable) subsets. In that case, this map should arise pretty quickly, and I guess I'm an idiot for not finding it (or, at the very least, trying harder to find it). 

However you go about a problem, keep going about more and the elegant solutions will fall from the sky soon enough. I won't be giving up on bijections so quickly in future. Eitherway, always remember: the only embarrassing page of mathematics is an empty one. 

 
## Hints

1. I see comets, stars; with enough power, I observe all: what am I?  

2. Can we jump straight to a bijection? 