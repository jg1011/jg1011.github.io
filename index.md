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
                <p>Mathematician and software developer passionate about probability theory, particularly its application to non-constructive combinatorics and percolation theory, chaotic dynamical systems, and building high-performance data-driven systems, usually in the financial sector. I specialize in Rust/Python development, and I enjoy training reinforcement learning models to solve puzzles.</p>
            </div>
        </div>
        <img src="{{ '/assets/images/profile_photo.jpg' | relative_url }}" alt="Jacob Green" class="hero-photo">
    </section>

    <!-- Projects Section -->
    <section id="projects" class="section">
        <h2 class="section-title">Projects</h2>
        
        <details>
            <summary>Clanker in Hanoi</summary>
            <div class="details-content">
                <div class="project-card">
                    <img src="{{ '/assets/images/clanker-in-hanoi.png' | relative_url }}" alt="Clanker in Hanoi" class="project-image">
                    <div class="project-info">
                        <h3 class="project-title">Clanker in Hanoi</h3>
                        <p class="project-description">A step towards artificial reasoning: Inspired by a <a href="https://arxiv.org/abs/2506.06941" target="_blank">2025 paper out of Apple</a> showcasing the failure of LRMs on standard puzzles with lots of moves (particularly the Tower of Hanoi puzzle with n rings, our chosen experiment), I wondered if modern reinforcement learning could outperform LRMs on such puzzles. This could provide a potential three-pronged approach to AGI: (1) leverage LRM pattern recognition capabilities to design a puzzle-specific learning framework (2) learn functional solution to puzzle via aforementioned learning framework (3) Invoke learnt function to solve, and update LRM weights so that knowledge acquired via RL is cached away. Here we outsource reason, leaving pattern recognition to LRMs, which excel here, and reason to RL, which can perform incredibly well when tailored to specific problems. Note this is likely computationally infeasible with modern compute, but with adequate scaling (e.g. <a href="https://arxiv.org/abs/2301.08028" target="_blank">MetaRL</a> for handling wider problem classes) and a few more iterations of Moore's law it could be viable</p>
                        <div class="project-links">
                            <a href="https://github.com/jg1011/clanker-in-hanoi" target="_blank">GitHub</a>
                        </div>
                    </div>
                </div>
            </div>
        </details>

        <details>
            <summary>Bridge Crossing Problem</summary>
            <div class="details-content">
                <div class="project-card">
                    <img src="{{ '/assets/images/bridge-crossings.png' | relative_url }}" alt="Bridge Crossings Problem" class="project-image">
                    <div class="project-info">
                        <h3 class="project-title">Bridge Crossings Problem</h3>
                        <p class="project-description">Algorithmic and RL-based solutions to various generalisations of the famous bridge crossing problem</p>
                        <div class="project-links">
                            <a href="https://github.com/jg1011/bridge-crossing-problem" target="_blank">GitHub</a>
                        </div>
                    </div>
                </div>
            </div>
        </details>

        <details>
            <summary>British Mathematical Olympiad Solution Compendium</summary>
            <div class="details-content">
                <div class="project-card">
                    <img src="{{ '/assets/images/bmo-solution-compendium.png' | relative_url }}" alt="British Mathematical Olympiad Solution Compendium" class="project-image">
                    <div class="project-info">
                        <h3 class="project-title">British Mathematical Olympiad Solution Compendium</h3>
                        <p class="project-description">An assortment of solutions to British Mathematical Olympiad questions. Worked on this a few years ago and got told I can't continue due to copyright issues. The half-complete solution manual is available here though. Note I skipped geometry questions, primarily as these are boring, but also partially a skill issue.</p>
                        <div class="project-links">
                            <a href="{{ '/assets/pdf/bmo-solutions.pdf' | relative_url }}" target="_blank">Download PDF</a>
                            <a href="https://github.com/jg1011/british-mathematical-olympiad-solutions" target="_blank">GitHub</a>
                        </div>
                    </div>
                </div>
            </div>
        </details>

        <details>
            <summary>Microscopic Fungi Image Classifier</summary>
            <div class="details-content">
                <div class="project-card">
                    <img src="{{ '/assets/images/fungi-classifier.png' | relative_url }}" alt="Microscopic Fungi Image Classifier" class="project-image">
                    <div class="project-info">
                        <h3 class="project-title">Microscopic Fungi Image Classifier</h3>
                        <p class="project-description">Classification of invasive fungi species from microscopic imaging, trained on the DeFungi dataset. Models include classical convolutional neural networks, bayesian classifiers, logistic regression classifiers and the more modern vision transformer. </p>
                        <div class="project-links">
                            <a href="https://github.com/jg1011/DeFungi-Classification" target="_blank">GitHub</a>
                        </div>
                    </div>
                </div>
            </div>
        </details>
    </section>

    <!-- Libraries Section -->
    <section id="libraries" class="section">
        <h2 class="section-title">Libraries</h2>
        
        <details>
            <summary>PyDynSys</summary>
            <div class="details-content">
                <div class="library-card">
                    <img src="{{ '/assets/images/pydynsys.gif' | relative_url }}" alt="PyDynSys" class="library-image">
                    <div class="library-info">
                        <h3 class="library-title">PyDynSys (currently in alpha)</h3>
                        <p class="library-description">An object oriented library for the analysis of dynamical systems, designed for mathematically mature use-cases: Symbolic, functional and numerical dynamical system builders, trajectory computation with caching via scipy and plotting with matplotlib, support for both autonomous and non-autonomous systems, in-built n-pendulum and driven pendulum models with matplotlib simulations, symbolic phase space support with plotting utilities, in-built bifurification analysis utilities and more!</p>
                        <div class="library-links">
                            <a href="https://github.com/jg1011/PyDynSys" target="_blank">GitHub</a>
                            <a href="https://jg1011.github.io/PyDynSys/" target="_blank">Docs</a>
                        </div>
                    </div>
                </div>
            </div>
        </details>
    </section>

    <!-- Articles Section -->
    <section id="articles" class="section">
        <h2 class="section-title">Articles</h2>
        
        <h3>Standalone</h3>
        <details>
            <summary><a href="{{ '/articles/test/article-1' | relative_url }}">Test Article</a></summary>
            <div class="details-content">
                <p>A test article to demonstrate the article functionality with Lorem ipsum content and mathematical examples.</p>
            </div>
        </details>

        <h3>Series</h3>
        <details>
            <summary>Reinforcement Learning Tutorials</summary>
            <div class="details-content">
                <p>A collection of tutorials, in <a href="https://en.wikipedia.org/wiki/Tutorial#Academia" target="_blank">British academic parlance</a> that is, for  topics in reinforcement learning. We go into further mathematical depth than standard texts, such as <a href="https://web.stanford.edu/class/psych209/Readings/SuttonBartoIPRLBook2ndEd.pdf" target="_blank">Sutton's Introduction to Reinforcement Learning</a>, and as such expect a greater deal of mathematical maturity. I try to write in a more conversational style, both to appease Socrates and to capture that tutorial feeling, and I may record some seminars around this content if I find the time.</p> 

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
                        <li><a href="{{ '/articles/rl-tutorials/tut1/tut1.pdf' | relative_url }}" target="_blank">Tutorial 1: What actually is reinforcement learning? (pdf)</a></li>
                    </ul>
                </div>
            </div>
        </details>
    </section>

    <!-- Miscellaneous Section -->
    <section id="miscellaneous" class="section">
        <h2 class="section-title">Miscellaneous</h2>
        
        <details>
            <summary>Masters Thesis</summary>
            <div class="details-content">
                <div class="project-card">
                    <img src="{{ '/assets/images/test-image.png' | relative_url }}" alt="Masters Thesis" class="project-image">
                    <div class="project-info">
                        <h3 class="project-title">Masters Thesis</h3>
                        <p class="project-description">Mirroring the work of <a href="https://arxiv.org/abs/2312.10026" target="_blank">Campos, Jenssen, Michelen and Sahasrabudhe</a>, we exhibit the existence of a sphere packing density $\Omega(2^d d \log d)$ in $\mathbb{R}^d$. We build upon their work in three key ways: (1) Providing explicit bounds for large fixed $d$ (2) Generalising arguments by considering packings in dilations of a convex body (3) Providing significant additional pedagogical value. I'll note that this thesis isn't overly relevant anymore, after <a href="https://arxiv.org/abs/2504.05042" target="_blank">Klartag</a> exhibited packings of density $\Omega(2^d d^2)$. Alas, at least I learnt a lot... Work was done to find a Cox-process to investigate the entropy of such packings, along with a stochastic algorithm to generate such packings. This proved quite difficult, and while some lemmas were proven, it was decidedly cut from the final draft. Could make for an interesting PhD thesis, but I haven't given it so much thought lately.</p>
                        <div class="project-links">
                            <a href="{{ '/assets/pdfs/thesis.pdf' | relative_url }}" target="_blank">Download PDF</a>
                        </div>
                    </div>
                </div>
            </div>
        </details>
    </section>
</div>
