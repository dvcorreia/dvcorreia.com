# AGENTS.md for dvcorreia.com

This repository contains the source code for **dvcorreia.com**, the personal technical blog of Diogo Correia.

The site is built with **Hugo** for static site generation and **Nix** for builds and development environments.

This file exists to give basic orientation to automated agents and tools making changes to the repository.

## Project Structure

The project mostly follows a standard Hugo layout, with a few caveats worth knowing:

* `articles/`

  * Contains older articles or drafts that may be converted into blog posts later.
  * All the content here is not published.

* `assets/css/`

  * CSS files prefixed with `_` are partials.
  * They are imported by other files (typically `assets/css/main.css`) and should not be included directly.

* `assets/ts/`

  * All dynamic or interactive behavior lives here.
  * TypeScript is preferred over plain JavaScript.

* `nix/` and `flake.nix`

  * Nix expressions for building the site and setting up development environments.

* JavaScript dependencies are managed with **pnpm**.

## Code & Content Guidelines

* Prefer **semantic HTML** to clearly express structure and meaning.
* Target **modern baseline browsers**.
* Use modern CSS features when they simplify the code.
* Keep CSS as simple as possible while achieving its purpose.

When writing or editing content:

* Assume a technical audience.
* Be direct and concrete.
* Avoid marketing language and unnecessary filler.

## General Expectations

* Make minimal, focused changes.
* Avoid unrelated refactors or formatting churn.
* Do not introduce runtime services, analytics, or client-side frameworks unless explicitly requested.

When unsure about a change, prefer leaving things as they are.
