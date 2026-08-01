# Artem Puzik

**Full-Stack Developer (Vue.js / Laravel) — Payments, E-commerce, AI**

## Contact

-   **Email:** artem.puzik.it@gmail.com
-   **Phone:** +375 29 220 89 77
-   **Location:** Minsk, Belarus — available for remote work (GMT+3, full overlap with EU working hours)
-   **LinkedIn:** [linkedin.com/in/artem-puzik](https://www.linkedin.com/in/artem-puzik/)
-   **GitHub:** [github.com/artempuzik](https://github.com/artempuzik)
-   **Packagist:** [artempuzik/musewallet-sdk-laravel](https://packagist.org/packages/artempuzik/musewallet-sdk-laravel)
-   **Telegram:** [@ArtemPuzik](https://telegram.im/@ArtemPuzik)

---

## Professional Summary

Full-Stack Developer with **4+ years of commercial experience** building and maintaining high-traffic production web applications end-to-end — Vue.js/Nuxt/TypeScript frontends on Laravel/PHP backends. Products currently in production serve **thousands of monthly users** through payment and subscription flows across **4 payment providers**. Built a modular monolith with explicit domain boundaries, own the infrastructure behind it (Docker, Nginx, CI/CD, Redis queues), and published an open-source Laravel payment SDK on Packagist. Remote experience with distributed teams in Portugal, Poland and Belarus.

**Core stack:** Vue.js 3, Nuxt.js, TypeScript, JavaScript, Laravel, PHP 8.3, MySQL, Redis, Docker, Nginx, CI/CD, REST API, Stripe, LLM integration

**Experience by technology:** JavaScript / TypeScript — 4 years · Laravel / PHP — 2.5 years · Vue.js / Nuxt.js — 2.5 years · React / React Native — 2 years · Node.js — 1.5 years

---

## Professional Experience

### Full-Stack Developer — Applojd Media LLC (ООО «Апплойд Медиа»), Minsk, Belarus

_January 2025 – Present · Full-time_

Vue.js 3, Nuxt.js 4, Laravel 12, PHP 8.3, TypeScript, MySQL, Redis, Docker, Nginx, CI/CD

-   Own end-to-end delivery of AI-powered e-commerce and subscription web products serving thousands of monthly users under high-traffic marketing campaigns
-   Designed and built a **modular monolith with explicit domain boundaries**, isolating the payment, subscription and AI domains so a change in one cannot regress the others
-   Integrated **4 payment providers** (Stripe, PayPal, SBP, Airwallex) behind a single provider abstraction, covering one-off checkout, recurring subscription billing and webhook-driven state reconciliation
-   Moved image generation, AI calls and billing side effects off the request path into **Redis queues with Laravel Horizon**, keeping checkout responsive under campaign traffic spikes
-   Built server-rendered (SSR) Nuxt.js conversion funnels instrumented with Google Tag Manager, Amplitude and Meta Pixel, and ran **A/B tests through GrowthBook** to drive funnel decisions with data
-   Implemented in-browser gesture recognition with **MediaPipe** for a real-time interactive funnel step — client-side machine learning, no server round-trip and no video leaving the device
-   Set up and maintain production infrastructure: Docker multi-stage builds, Nginx reverse proxy, CI/CD pipelines in Bitbucket Pipelines and GitHub Actions
-   Cover critical paths — payments, subscriptions, AI flows — with PHPUnit/Pest unit and feature tests plus end-to-end (E2E) suites; run code review and maintain coding standards for the team

### Full-Stack Developer — SharpBit, Portugal (remote)

_January 2024 – November 2024 · Full-time_

Vue.js, Laravel, TypeScript, MySQL, REST API, Git

-   Built and maintained Vue.js + Laravel enterprise applications for internal operations and client-facing tools
-   Replaced a manual operational workflow with an automated tool — the founder credits it with saving the company "a huge amount of time and resources" (reference below)
-   Owned features end-to-end: technical design, implementation, code review and production release
-   Improved application response times through MySQL query optimisation, caching and frontend performance work

### Full-Stack Developer — WeExpert, Poland (remote)

_March 2023 – August 2024 · Contract, part-time (parallel to the SharpBit role from January 2024)_

React, Node.js, TypeScript, PostgreSQL, GraphQL, REST API

-   Built React + Node.js (TypeScript) web applications for Polish and European clients
-   Designed PostgreSQL schemas and GraphQL/REST API layers with typed contracts and migration workflows
-   Implemented authentication, validation and error-handling patterns for production APIs, plus third-party service integrations
-   Worked fully asynchronously with remote stakeholders across time zones, delivering sprint-based milestones in an Agile/Scrum process

### React / React Native Developer — SL Max, Minsk, Belarus

_June 2022 – March 2023 · Full-time_

React Native, React, JavaScript, real-time data, mobile UI/UX

-   Built cross-platform React Native mobile applications for GPS/GLONASS fleet monitoring, **published on Google Play** for Android and iOS
-   Implemented real-time location tracking and map visualisation over continuous telemetry streams from vehicle trackers
-   Handled unreliable field connectivity with offline-friendly data caching and synchronisation for transport operators
-   Worked directly with hardware/IoT engineers to align mobile UX with real field requirements

---

## Technical Skills

**Architecture:** Modular monolith, domain boundaries, event-driven architecture, asynchronous processing, message queues, REST API design

**Backend:** Laravel 10–12, PHP 8.3, Eloquent ORM, queues and events, Artisan CLI, Laravel Horizon

**Frontend:** Vue.js 3 (Composition API, Pinia), Nuxt.js 3/4 (SSR, SSG, server middleware), TypeScript, JavaScript (ES6+), Tailwind CSS, HTML5, CSS3, responsive design

**Payments and e-commerce:** Stripe, PayPal, SBP, Airwallex, MusePay Card API — checkout, recurring subscriptions, webhooks, payment reconciliation

**Databases:** MySQL (schema design, indexing, query optimisation, migrations), Redis (caching, queues, pub/sub)

**DevOps and infrastructure:** Docker (multi-stage builds, Docker Compose), Nginx (reverse proxy), CI/CD (GitHub Actions, Bitbucket Pipelines), Git, AWS (EC2 instance provisioning, S3 object storage for app hosting)

**AI in product:** LLM features in production — generation behind queues with retries and graceful degradation when a provider fails, structured prompting, embeddings, OpenAI API. Model-agnostic: work across OpenAI, Anthropic and Google models, picking per task rather than locking the product to one vendor

**Applied ML in the browser:** MediaPipe — real-time gesture recognition running client-side, no server round-trip

**AI-assisted engineering:** daily work with coding agents (Claude Code, Cursor); author project-level agent rules and reusable skills so a team gets consistent AI-assisted refactoring, review and documentation

**Analytics and experimentation:** Google Tag Manager, Amplitude, Meta Pixel, GrowthBook (A/B testing, feature flags)

**Testing and quality:** PHPUnit, Pest, unit and feature testing, end-to-end (E2E) testing, code review, Agile/Scrum

**Also worked with:** React, React Native, Node.js (Express.js), GraphQL, PostgreSQL, Temporal, RabbitMQ, PWA (service workers, offline support)

---

## Selected Projects

### MuseWallet SDK for Laravel — open source

_PHP 8.1+, Laravel 10/11, OpenSSL_ · [packagist.org/packages/artempuzik/musewallet-sdk-laravel](https://packagist.org/packages/artempuzik/musewallet-sdk-laravel)

Published Laravel SDK for the MusePay Card API. Wraps RSA request signing, webhook verification and typed DTO responses behind an event-driven API, so integrating applications never touch raw cryptography or untyped payloads. Full API v1 coverage with documentation and test suite. Released October 2025 on Packagist.

### Motiohead — creative production platform

_Vue.js, Laravel, LLM integration, MediaPipe_ · [motiohead.com](https://www.motiohead.com/)

Sole full-stack developer. Built AI-assisted content generation and an interactive experience driven by real-time gesture recognition — MediaPipe runs client-side, so the interaction stays responsive without streaming video to a server. Delivered design-heavy UI to a creative director's specification.

### Storyman.ai — AI storytelling platform

_React, Node.js, TypeScript, LLM integration_

Visual storytelling product built on a structured narrative framework. Orchestrated multiple AI services for text and image generation into a single authoring flow, with real-time updates and collaborative editing.

### GeoTek Mobile — GPS/GLONASS fleet monitoring

_React Native, real-time telemetry_ · [Google Play](https://play.google.com/store/apps/details?id=com.geotek)

Cross-platform mobile application for transport operators tracking vehicle fleets. Real-time positions on interactive maps from continuous tracker telemetry, with offline caching so crews keep working through connectivity gaps in the field.

---

## Education and Certifications

-   **Frontend Developer Certification** — RS School (EPAM Systems), 2021–2022 · Modern JavaScript frameworks and engineering practices
-   **Backend Developer Certification** — Pixelpex, 2021–2022 · Laravel, PHP, database design
-   **Bachelor of Science in Engineering** — Belarusian National Technical University, 2008–2013

Career switch into software engineering in 2021 after professional retraining.

---

## Mentoring and Leadership

-   Mentored students on the **RS School (EPAM Systems) JavaScript / Front-End course for 6 months** — guided them through complex concepts, reviewed assignments and gave structured feedback
-   Run code review and maintain coding standards in the current team

---

## Languages

-   **Russian:** Native
-   **Belarusian:** Native
-   **Polish:** B1 (intermediate)
-   **English:** B1 (intermediate) — technical documentation, written communication, day-to-day asynchronous collaboration; actively improving toward B2

---

## References

> "Artem's talent, knowledge, and communication were beyond all expectations. A truly sophisticated TOP level professional. I was amazed by the result of his work."
> — **Nadya Gorodetskaya**, Founder / Creative Director, MOTIOHEAD

> "Artem brings great energy and a 'can do' attitude. He was instrumental in creating and implementing new software that saves us a huge amount of time and resources. Highly recommended."
> — **Sergey Ryabenko**, Founder, SharpBit

Additional references available on LinkedIn: Dzmitry Varabei (Senior Program Manager, EPAM Systems), Viktor Kozinin (CEO, SL Max), Ramin Malikov (Co-Founder, VIOTYS LLC).

---

Last updated: August 2026
