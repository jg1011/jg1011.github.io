---
layout: default
title: Home
---

<div class="container">
    <!-- Hero Section -->
    <section class="hero">
        <div class="hero-content">
            <h1>Jacob Green</h1>
            <div class="hero-contact">
                <a href="mailto:jacobgreen1011@gmail.com">jacobgreen1011@gmail.com</a>
                <a href="https://github.com/jg1011" target="_blank">GitHub</a>
                <a href="https://www.linkedin.com/in/jacob-green-mathematics/" target="_blank">LinkedIn</a>
            </div>
            <div class="hero-about">
                <p>
                Quite fond of combinatorics, dynamical systems, and reinforcement learning&mdash;usually writing the code in Python or Rust. I also dabble in some history, though I can't profess any competancy here. 

                <br> <br> 

                For a copy of my CV, please email me. I’m always keen to hear about interesting problems and, when warranted, happy to discuss them over a call.
                </p>
            </div>
        </div>
        <img src="{{ '/assets/images/profile_photo.jpg' | relative_url }}" alt="Jacob Green" class="hero-photo">
    </section>

    <!-- Open Source Contributions Section -->
    <section id="open-source-contributions" class="section">
        <h2 class="section-title">Open Source Contributions</h2>
        
        <details>
            <summary>Attrax</summary>
            <div class="details-content">
                <div class="library-card">
                    <div class="library-info">
                        <h3 class="library-title">Attrax (Author)</h3>
                        <p class="library-description">
                            A JAX-based python library providing the identification of attractors, along with their basins of attraction, for dynamical systems $\dot{\boldsymbol{x}} = \boldsymbol{f}(\boldsymbol{x})$ via 
                            <a href="https://arxiv.org/abs/2110.04358">recent developments by Datseris and Wagemakers</a>. 
                            
                            <br> <br>

                            NOTE: Currently unreleased. Should have v0.1.0 up in the next couple of weeks just finishing a few things on my end. 
                        </p>
                        <div class="library-links">
                            <a href="https://github.com/jg1011/attrax" target="_blank">Repo</a>
                            <a href="https://jg1011.github.io/attrax/" target="_blank">Docs</a>
                        </div>
                    </div>
                </div>
            </div>
        </details>

    <details>
            <summary>British Mathematical Olympiad Solution Compendium</summary>
            <div class="details-content">
                <div class="project-card">
                    <img src="{{ '/assets/images/bmo-solution-compendium.gif' | relative_url }}" alt="British Mathematical Olympiad Solution Compendium" class="project-image">
                    <div class="project-info">
                        <h3 class="project-title">British Mathematical Olympiad Solution Compendium</h3>
                        <p class="project-description">An assortment of solutions to older British Mathematical Olympiad questions I typed up some years ago. Geoff Smith told me to stop because it would hurt his book sales, and by a questionable induction the UK Maths Trust, so I obliged. 
                        
                        <br> <br> 

                        I'll note I skipped all the geometry questions. Olympiad geometry, unless of a combinatorial flavour, tends to be extremely boring to me. There is also a "skill issue" element, left to be quantified by the reader. 
                        
                        </p>
                        <div class="project-links">
                            <a href="{{ 'british-mathematical-olympiad-solutions\solutions\solution-bank.pdf' | relative_url }}" target="_blank">Download PDF</a>
                            <a href="https://github.com/jg1011/british-mathematical-olympiad-solutions" target="_blank">GitHub</a>
                        </div>
                    </div>
                </div>
            </div>
        </details>

    </section>

    <!-- TODO: rdiary; tsist5, and mby more solvers in rust ODEs library; clanker in hano; clankerjack; Fungi Image Classifier>
    <!-- TODO: epsilon nets, greedy permutations and voronoi diagrams; bridge-crossing problem as an article>

    <!-- Exposition Section -->
    <section id="expositions" class="section">
        <h2 class="section-title">Expositions</h2>

        <h3>Tutorials</h3>
        <details>
            <summary>Reinforcement Learning</summary>
            <div class="details-content">
                <p>We go into further mathematical depth than standard texts, such as <a href="https://web.stanford.edu/class/psych209/Readings/SuttonBartoIPRLBook2ndEd.pdf" target="_blank">Sutton's Introduction to Reinforcement Learning</a>, and as such expect a greater deal of mathematical maturity. I try to write in a more conversational style, both to appease Socrates and to capture that tutorial feeling. I may record some seminars around this content if I find the time.
                
                <br> <br> 

                Currently writing tutorial 2: On dynamic programming. This covers the dynamic programming formulation of RL, 
                Bellman's equation, and the relevant ties with the Banach Fixed Point theorem. 
                
                </p> 

                <p><strong>FAQ:</strong></p>

                <p><strong>Q:</strong> What are your credentials? Why should I listen to you?</p>
                <p><strong>A:</strong> Appeal to authority.</p>

                <p><strong>Q:</strong> Why not read one of the many books on RL?</p>
                <p><strong>A:</strong> Survivorship bias.</p>

                <p><strong>Q:</strong> I've already been reading Sutton, why should I switch to your tutorials now?</p>
                <p><strong>A:</strong> Sunk cost fallacy.</p>
                <div class="series-parts">
                    <h4>Tutorials:</h4>
                    <ul>
                        <li><a href="{{ '/expositions/rl/tut1/tut1.pdf' | relative_url }}" target="_blank">Tutorial 1: What actually is reinforcement learning? (pdf)</a></li>
                    </ul>
                </div>
            </div>
        </details>

        <h3>Combinatorics</h3>

        <details>
            <summary>Sum-Free Subsets - The Erdős Way</summary>
            <div class="details-content">
                <div class="project-card">
                    <img src="{{ '/assets/images/sum-free-subsets.png' | relative_url }}" alt="Swiss Subsets" class="project-image">
                    <div class="project-info">
                        <h3 class="project-title">Sum-Free Subsets - The Erdős Way</h3>
                        <p class="project-description">Motivating a famous proof of Erdős that for each finite set of nonzero integers $B$, there is a subset $A \subseteq B$ of size $A > \frac{|B|}{3}$ with no three elements
                        $a_1, a_2, a_3 \in A$ obeying $a_1 + a_2 = a_3$. 
                        </p>
                        <div class="project-links">
                            <a href="{{ '/articles/sum-free-subsets/' | relative_url }}">Read</a>
                            <a href="{{ '/expositions/combi/sum_free_subsets.md' | relative_url }}" target="_blank">Raw</a>
                        </div>
                    </div>
                </div>
            </div>
        </details>

        <details>
            <summary>Swiss Subsets</summary>
            <div class="details-content">
                <div class="project-card">
                    <img src="{{ '/assets/images/swiss_subsets.png' | relative_url }}" alt="Swiss Subsets" class="project-image">
                    <div class="project-info">
                        <h3 class="project-title">Swiss Subsets</h3>
                        <p class="project-description">I lost over an hour of my life to this problem from <a href="https://rainymathboy.wordpress.com/wp-content/uploads/2011/01/102-combinatorial-problems.pdf"> 102 Combinatorial Problems From The Training Of The USA IMO Team. </a>, so I thought it would make for a good excuse to write an exposition of the form "heres how to solve a hard olympiad problems". 
                        </p>
                        <div class="project-links">
                            <a href="{{ '/articles/swiss-subsets/' | relative_url }}">Read</a>
                            <a href="{{ '/expositions/combi/swiss_subsets.md' | relative_url }}" target="_blank">Raw</a>
                        </div>
                    </div>
                </div>
            </div>
        </details>
    </section>

    <!-- Thesis -->
    <section id="thesis" class="section">
        <h2 class="section-title">Thesis</h2>
        
        <details>
            <summary>Masters</summary>
            <div class="details-content">
                <div class="project-card">
                    <img src="{{ '/assets/images/masters_thesis.png' | relative_url }}" alt="Masters Thesis" class="project-image">
                    <div class="project-info">
                        <h3 class="project-title">Masters Thesis</h3>
                        <p class="project-description">Mirroring the work of <a href="https://arxiv.org/abs/2312.10026" target="_blank">Campos, Jenssen, Michelen and Sahasrabudhe</a>, we exhibit the existence of a sphere packing density $\Omega(2^d d \log d)$ in $\mathbb{R}^d$. We build upon their work in three key ways: (1) Providing explicit bounds for large fixed $d$ (2) Generalising arguments by considering packings in dilations of a convex body. 
                        
                        <br> <br> 

                        It is worth noting I had these ideas independently, leading to novel existence proofs of a packings densities $\Omega(2^d)$ and $\Omega(2^d d)$ in $\mathbb{R}^d$. As I later found out, the underlying idea (using independent sets and the AKS bound) is akin to that of <a href="https://arxiv.org/abs/math/0402132">Krivelevich, Litsyn and Vardy</a>, though the random geometric graph formulation was independent&mdash;inspired by the work of my advisor Mathew Penrose. My advisor compared this thesis with Captain Scott's last march. I'm inclined to agree.
                        
                        <br> <br> 

                        Mere months later <a href="https://arxiv.org/abs/2504.05042" target="_blank">Klartag</a> exhibited packings of density $\Omega(2^d d^2)$. Well done Klartag! 

                        </p>
                        <div class="project-links">
                            <a href="{{ '/assets/pdfs/thesis.pdf' | relative_url }}" target="_blank">Download PDF</a>
                        </div>
                    </div>
                </div>
            </div>
        </details>
    </section>
</div>