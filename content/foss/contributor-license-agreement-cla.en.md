---
title: "Contributor License Agreements (CLAs)"
weight: 20
description: When does your Open Source project need a CLA? What alternatives exist? Cover your copyright in this intro to CLAs.
tags: ["legal"]

---

_Originally authored by [Mike Nolan](https://nolski.rocks), edited and maintained by [Justin W. Flory](https://jwf.io)._

This page introduces Contributor License Agreements (shortened C.L.As) in open source projects.


## What are they for?

Contributor License Agreements (CLAs) are often used in open source projects to form a legal agreement between an individual or company and a project maintainer.
This agreement usually includes a waiver of copyright (although not always) as well as the right to patent their contribution.

CLAs became popular during the early 2000s in open source.
Prior to platforms like GitHub and GitLab, patches were often emailed to mailing lists and manually accepted by maintainers.
Unfortunately, email patches did not always make clear the waiver of rights to whichever license the codebase was licensed under.
To minimize the maintainer's risk, CLAs made that waiver of rights explicit.

### Criticism of CLAs

CLAs are less popular, even on large projects, due to the popularity and use of platforms such as GitHub.
GitHub Terms of Service [explicitly state](https://help.github.com/en/articles/github-terms-of-service#6-contributions-under-repository-license) a user waives their copyright to whichever license is included in the repository at that time of the contribution.
This is considered by most to fulfill the need of a CLA.


## What alternatives exist?

Other than the GitHub Terms of Service, the Linux Foundation introduced a Developer Certificate of Origin (DCO) as a more lightweight method to have developers waive their rights.
Instead of maintaining a database of signed contracts, users can simply sign [using specific formatting of commit messages](https://probot.github.io/apps/dco/) _provided a project publishes a CLA/DCO in its repository._

### Fedora Project Contributor Agreement (FPCA)

The Fedora Project, an open source Linux distribution, has its [Fedora Project Contributor Agreement](https://fedoraproject.org/wiki/Legal:Fedora_Project_Contributor_Agreement), or FPCA.
Agreeing to the FPCA is required to contribute in the Fedora Project.
However, **it does not take away legal ownership of contributions**.
It only asserts that Fedora has default permission to use contributions under a permissive free license.

This is an innovative legal strategy to encourage open source collaboration without:

1. Anyone waiving their copyright
1. Adding risk for project maintainers


## What do I need for my own CLA?

Unlike licenses, CLAs are not standardized due to lack of widespread adoption.
Apache has an [individual CLA](https://www.apache.org/licenses/icla.pdf) which can be used as base.
It is highly recommended to work with a lawyer or legal professional to draft or modify a CLA to ensure there is clarity on which rights you expect contributors to waive.

Alternatively, the Fedora Project Contributor Agreement (above) presents an interesting alternative model to reduce friction in certain scenarios.
