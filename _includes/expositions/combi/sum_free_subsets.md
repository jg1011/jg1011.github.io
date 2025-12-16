# Sum Free Subsets: The Erdős Method 

Call a subset $X$ of an abelian group $G$ *sum-free* if $(X + X) \cap X = \emptyset$ (i.e. there do not exist $x_1, x_2 \in X$ with $x_1 + x_2 \in X$). We'll concern ourselves today with subsets of the abelian group $(\mathbb{Z}, +)$. Our goal is to find large sum-free subsets $A$ of arbitrary finite subsets $B$ of non-zero integers. Put a tad more formally, we'll be looking for lower bounds on the constant 

$$
\Xi (n) = \inf_{\substack{B \subset \mathbb{Z} \setminus \{0\} \\ |A| = n}} \max_{\substack{A \subseteq B \\ A \, \text{sum-free}}}  |A|
$$

We'll be covering Erdős' famous lower bound of this quantity, the proof of which is often written in about 5-6 lines and seems&mdash;at least, at first&mdash;to have come from divine intervention. With this informal exposition, I hope to demystify this proof a little bit. The goal, as it always is, is for the reader to feel that they do not just know the proof, but can conceive of how it was discovered in the first place.   

For a formal reference, see e.g. CH1 of Alon & Spencer's "The Probabilistic Method". This book is a must-read for anyone looking to find, in the words of Erdős, "book proofs" in combinatorics. Personally, I am yet to find another book so densely populated with beautiful ideas. 

## First Thoughts 

As with all combinatorics problems, it'll be instructive to look at a simpler special case. There are usually two ways of obtaining such a case: 

1. Impose some additional structure on our objects

2. Reduce the size of our objects  

In the case of sum-free subsets, taking the first approach seems to be intuitively better. We have no guarantees on the structure of $B$, so by adding some we may gain some intuition. To that end, what if we just let $B = [n] =: \{1, \dots, n\}$? It turns out this is pretty easily solved, and would likely make for a good&mdash;albeit, basic&mdash;olympiad problem. 

Let $f(n)$ denote the size of the largest sum-free subset of $[n]$. 

Playing around with some small $[n]$, one of the first things you'll notice is that if we take elements from the second half of $[n]$ and add them, we get something greater than $n$. Hence, these "2nd-half" integers must form a sum-free subset. Formally, the set 

$$
\left\{\left\lceil \frac{n+1}{2} \right\rceil, \left\lceil \frac{n+1}{2} \right\rceil + 1, \dots, n\right\} \subset [n]$$

is sum-free. This gives 

$$
f(n) \geq n - \left\lceil \frac{n+1}{2} \right\rceil + 1 = \left\lfloor \frac{n+1}{2} \right\rfloor 
$$ 

We could alternatively consider the positive odd integers

$$
\{1, 3, 5, \dots\} \subset [n]
$$

which can be proven to be sum-free by any toddler on the street. It is equally easy to see there are $\left\lfloor \frac{n+1}{2} \right\rfloor$ of these, so we obtain the same lower bound on $f(n)$. 

Now, what about upper bounds? There's a nice trick we can do to see that these previously mentioned sum-free subsets are maximal. 

**Proposition 1:** For all $n \in \mathbb{N}$ we have $f(n) = \left\lfloor \frac{n+1}{2} \right\rfloor$ 

**Proof:** We've already established the lower bound, just take the odd-integers up to $n$. As for the upper bound, let $A = \{a_1, \dots, a_m\}$ be a sum-free subset of $[n]$. As $A$ is sum-free, we must have $a_m - a_i \not\in A$ for each $1 \leq i \leq m-1$. It is obvious that these differences are less than $n$, so that 

$$
A^\prime = A \cup \{a_m - a_1, \dots, a_m - a_{m-1}\} \subseteq [n]
$$ 

is a subset of size $2m - 1$, giving $2m - 1 \leq n$ and hence $m \leq \left\lfloor \frac{n+1}{2} \right\rfloor$. This completes the proof. $\quad \square$ 

So, we've solved the case where $B = [n]$ is forced, what did we learn? Not as much as we'd like, admittedly, but one key takeaway is that subsets of consecutive integers work quite well. Indeed, generalising a bit, we see that for $k > 0$ 

$$
\{k, k+1, \dots,  2k - 1\} \subset \mathbb{Z} \setminus \{0\}
$$

is a sum-free set of size $k$. Hence, if we're lucky enough to have a long string of large consecutive integers in $B$, we'll get a large sum-free subset of $B$. While we obviously can't ever guarantee this (consider e.g. $B$ equal to first $n$ primes), it turns out this idea is extremely useful... 

## The Cyclic Group Insight 

Last section, we tried simplifying the problem by imposing some additional structure on $B$&mdash;namely, by explicitly specifying it&mdash;and we found that this did indeed simplify things. It would be nice if we could gain some structure without specifying $B$. The main challenge of bounding $\Xi(n)$ from below is the absence of any structural knowledge about $B$. If we can decouple ourselves from $B$ and, essentially, work with a fixed set, we should win as easily as last section.

Since $B$ is finite, it is bounded, and so for sufficiently large $p$ the set $B$ can be embedded in the integers modulo a prime $p$, denoted $\mathbb{Z}_p := \mathbb{Z}/p\mathbb{Z}$. It is clear that sum-free sets in $\mathbb{Z}_p$ are sum-free sets in $\mathbb{Z}$, but note however that the converse isn't true. By taking $p > 2 \max_{b \in B} |b|$ it is ensured that $p$ is sufficiently large. Also, for such $p$ we have $p \nmid b$ for each $b \in B$, so we can do even better and embed $B$ into $\mathbb{Z}_p \setminus \{0\}$. For the rest of the exposition, suppose that $p > 2 \max_{b \in B} |b|$.

This is a significant structural upgrade&mdash;we have a field! We now have multiplicative inverses to work with. If we can use this additional structure to find, or at least prove the existence of, a large sum-free subset (with addition in $\mathbb{Z}_p$) of the embedding of $B$ in $\mathbb{Z}_p$ we'll obtain our lower bound.

Multiplicative inverses are a particularly powerful tool to have at our disposal. They emit the following observation.

**Observation:** For all $x \in \mathbb{Z}_p \setminus \{0\}$, $A$ is a sum-free set in $\mathbb{Z}_p \setminus \{0\}$ if and only if $xA := \{xa\}_{a \in A}$ is a sum-free set in $\mathbb{Z}_p \setminus \{0\}$  

This is easily seen by writing out the pointwise sum-free condition.  

As we've embedded $B$ into $\mathbb{Z}_p$, we've also embedded its subsets. So, by observation 1, we can take the following approach: Take a sum-free set $C$ in $\mathbb{Z}_p \setminus \{0\}$, "permute" it with elementwise multiplication by some $x \in \mathbb{Z}_p \setminus \{0\}$ and take the elements of $xC$ that are shared with $B$. If we can show that there is some choice of $x \in \mathbb{Z}_p \setminus \{0\}$ that makes the intersection $xC \cap B$ large, we'll have a good lower bound on $\Xi(n)$. 

It is worth stepping back and postulating as to why we expect to be able to find such a choice of $x$. Note that $\mathbb{Z}_p \setminus \{0\}$ is a cyclic group with respect to addition, and further that all it's elements are generators. As $x$ varies over $\mathbb{Z}_p \setminus \{0\}$ so will $xc$ for any $c \in \mathbb{Z}_p \setminus \{0\}$. This means that we'll get $p-1$ different variants of $C$ to try and intersect with $B$. As $p$ is, in the worst case, at least the size of $n$, we should expect there to be a choice of $x$ such that $|xC \cap B| \approx |C|$.

First, we need to choose $C$. As we have no structural knowledge of $B$, our best bet is to make $C$ as large as possible. To that end... 

## Sum-Free Sets In $\mathbb{Z} / p \mathbb{Z}$

We're back in the setting we started with: we seek to find the largest sum-free subset of an explicitly stated set. This time things will be a little harder. 


## The Probabilistic Method 

Let us sample $\mathbb{Z}_p \ni x \sim \text{unif}\{1, \dots, p-1\}$, i.e. $x$ a non-zero remainder modulo $p$ uniformly. By the classical first moment method, which says that if a construction exists in expectation then it exists, and our dialogue last section, we know that 

$$
\Xi(n) \geq \mathbb{E}[|xB \cap C_k|]
$$

It remains to compute, or at the very least bound, this RHS quantity. It turns out this isn't too hard. Let $\{d_i\} = D = xB$ so that $d_i = xb_i$. As each $b_i$ is non-zero it is an additive generator of $\mathbb{Z}_p$, so that as $x$ ranges over $\{1, 2, \dots, p-1\}$ so does $d_i$. Hence, the probability $d_i \equiv e \not\equiv 0\pmod{p}$ is equal for each $e$, and we see that 

$$
\mathbb{P}(d_i \in C_k) = \frac{|C_k|}{p-1} > \frac{1}{3} 
$$

Hence, by the linearity of expectations 

$$
\mathbb{E}[|D \cap C_k|] = \sum_{i=1}^n \mathbb{E}[\boldsymbol{1} \{d_i \in C_k\}] = \sum_{i=1}^n \mathbb{P}(d_i \in C_k) > \frac{n}{3} 
$$

where $\boldsymbol{1}\{\dots\}$ denotes the usual indicator function. Thus, we deduce 

$$
\Xi(n) > \frac{n}{3}
$$

and the famous result of Erdős is proven. $\quad \square$

## Concluding Remarks 

By following what should be standard procedure for the apt combinatorialist, we are able to reasonably rediscover one of Erdős's more famous results. Let's recall the general process: 

1. We solved the $B = [n]$ case and noticed that consecutive integers worked pretty well. 

2. We noticed that $B+B$ and $B$ could be embedded in $\mathbb{Z}_p$ for sufficiently large $p$, giving us access to more structure. 

3. Included in this additional structure were invertible elements, $x \in \{1, 2, \dots, p-1\} \subset \mathbb{Z}_p$, which we realised allowed us to look at $p-1$ variations $xA$ of each subset $A \subseteq B$ for sum-free behaviour. 

4. We additionally embedded a long sum-free sequence of consecutive numbers $C_k$ in $\mathbb{Z}_p$ and realised that, by point 3, if we can find $x$ such that $xB \cap C_k$ is large, we'd exhibit the existence of a large sum-free subset.

5. We used the fact each $b_i$ is an additive generator of $\mathbb{Z}_p$ and the linearity of expectations to easily compute the average behaviour of $|xB \cap C_k|$ when $x$ is chosen uniformly at random, giving us a bound on $\Xi(n)$. 

This, if I had to guess, is some approximation of the sequence of steps Erdős (modulo a random number of missteps) would've gone through to construct this remarkable proof. Whenever I've seen this proof presented, it's been like visiting a magic show; you see your card, but you haven't a clue how he's got it. This brief exposition tries to be a behind the scenes interview with the magician, who, unfortunately, is no longer with us. 

As a final remark, I'll note that we also were able to motivate the general idea behind the probabilistic method: looking at global properties via stochastic sampling when local properties seem infeasible. 

