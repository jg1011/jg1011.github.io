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
                        <p class="project-description">A path to deeper reasoning: The failure of LRMs on the traditional tower of Hanoi puzzle, and reinforcement learning based solution. </p>
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
                            <a href="{{ '/assets/pdf/bmo-solution-compendium.pdf' | relative_url }}" target="_blank">Download PDF</a>
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
                            <a href="#" target="_blank">Documentation</a>
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
        <p>No series articles yet.</p>
    </section>
</div>
