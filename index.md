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
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
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
                        <p class="project-description">Lorem ipsum dolor sit amet, consectetur adipiscing elit. A Tower of Hanoi puzzle implementation with interactive gameplay and visual animations.</p>
                        <div class="project-links">
                            <a href="https://github.com/jg1011/clanker-in-hanoi" target="_blank">GitHub</a>
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
                        <p class="project-description">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Machine learning model for automated classification of microscopic fungi images using computer vision techniques.</p>
                        <div class="project-links">
                            <a href="https://github.com/jg1011/DeFungi-Classification" target="_blank">GitHub</a>
                        </div>
                    </div>
                </div>
            </div>
        </details>

        <details>
            <summary>Bridge Crossings Problem</summary>
            <div class="details-content">
                <div class="project-card">
                    <img src="{{ '/assets/images/bridge-crossings.png' | relative_url }}" alt="Bridge Crossings Problem" class="project-image">
                    <div class="project-info">
                        <h3 class="project-title">Bridge Crossings Problem</h3>
                        <p class="project-description">Lorem ipsum dolor sit amet, consectetur adipiscing elit. A computational solution to the classic bridge crossing puzzle with optimization algorithms.</p>
                        <div class="project-links">
                            <a href="https://github.com/jg1011/bridge-crossing-problem" target="_blank">GitHub</a>
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
                        <h3 class="library-title">PyDynSys</h3>
                        <p class="library-description">Lorem ipsum dolor sit amet, consectetur adipiscing elit. A comprehensive Python library for dynamical systems analysis, featuring numerical methods for solving differential equations and visualizing phase portraits.</p>
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
