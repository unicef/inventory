---
title: "Continuous Integration (CI)"
weight: 10

---

This guide is an introduction to Continuous Integration (C.I.) for open source projects.
In this guide, you will learn about the following topics:

1. What is CI and why does it matter?
1. CI platforms
1. Tips and tricks
1. Examples
1. Other resources


## What is CI and why does it matter?

Continuous Integration can be a few different things.
However, for the open source context, think of CI as the tool or platform which runs a code test suite.
A CI platform will run an open source project's code test suite and report the test results back in real-time.
You can even get this feedback before adding new code into a project.

### Tests vs. CI

It is important to distinguish code test suites from CI platforms.

A code test suite usually means the **actual tests** themselves.
The tests might use a framework like [Pytest](https://docs.pytest.org/), [Google Test](https://github.com/google/googletest/), [go test](https://golang.org/pkg/testing/), [Mocha](https://mochajs.org/), [RSpec](https://rspec.info/), or one of countless others.
When the test suite is run, it provides some kind of guarantee that the code shipped works as designed and as it should.

CI platforms can be simple or complex.
At their simplest, they are "wrappers" for the code test suite.
A **CI job** sets up the infrastructure and environment needed for the software, and then runs the code test suite.

So, in a way, a CI platform is a tool to automate running your code test suite and allows you to integrate test results into the development process.

### Benefits

Using a CI platform provides benefits both for agile software development _and_ open source.

For agile software development, a CI platform enables developers to get real-time feedback about whether new changes are compatible with existing code in the project.
Before code gets added, a developer gets a green flag or a red flag for the results of the test suite.
Developers will be able to avoid common human errors and mistakes in their code before they are added.

The open source view is both practical and also psychological:

1. _Practical_:
   New contributors or team members can use a test suite to avoid making common mistakes while learning a new codebase.
1. _Psychological_:
   Open source contributors are more confident to make changes because there is a safety net, in case there are unexpected side effects from their changes.

The practical benefits apply equally to your core team members and outside contributors.
In a **Pull Request**, a CI platform will post the test results into the Pull Request.
A developer or core team member will know immediately whether the test suite is still working, or if their changes may have introduced new bugs.

The psychological benefits are more focused towards anyone (new team members or outside contributors) who are still new to the project.
It is difficult for someone to step up and decide to contribute to an open source project!
A test suite and CI platform makes it easier by letting a new contributor be bold in making new changes, provided the test suite still passes at the end.
The contributor can run the test suite locally before they propose their changes to the project.


## CI platforms

There are many different CI platforms available.
Which one is best for you depends on your specific needs, what features are available, and what kinds of third-party integrations you need.
This guide will not cover them all, but here are some of the most popular ones:

* [Travis CI](https://travis-ci.org/)
* [Circle CI](https://circleci.com/)
* [GitHub Actions](https://github.com/features/actions)
* [GitLab CI](https://docs.gitlab.com/ee/ci/)
* [Jenkins](https://www.jenkins.io/) (powerful, but notoriously difficult to set up)

Note that all of these platforms have generous no-cost plans for software released under open source licenses.
However, usually you will have to pay if using CI on a private or hidden repository.

Additionally, all of these platforms have extensive documentation.
Read up on their docs to learn more!


## Tips and tricks

This is a short list of tips, tricks, and common traps to avoid when integrating CI into your project:

1. **All changes should be Pull Requests**:
   To get the most benefit out of a CI tool, all changes to your codebase should be made via a Pull Request.
   No committing directly to `master` or `production`!
1. **Use caching for faster builds**:
   All CI platforms usually have some kind of caching feature, if configured.
   Especially for larger projects, this can lead to huge speed-ups with how long your test suite takes to run.
1. **Block new changes from merging if tests fail**:
   If your test suite reports back with errors, do not add the proposed code into the main codebase.
   Fix the code for the tests first, and then add the changes.
   If you must make a one-time exception, do not delay in fixing your tests as soon as possible.
   Otherwise, developers might ignore them altogether (even for valid tests).
1. **Keep writing tests**:
   As long as you are writing new code, you should also be writing new tests.
   Remember, the benefits of CI will not be realized if you are not consistently testing your code.


## Examples

Need some examples of projects using a Continuous Integration pipeline?
Check out some of the examples below!

* (Go) **proton-bridge**:
  [git repo](https://github.com/ProtonMail/proton-bridge), [GitLab CI config](https://github.com/ProtonMail/proton-bridge/blob/5348ae7d183da194bd3f051ca723ca2efb99da7a/.gitlab-ci.yml), [golang-ci config](https://github.com/ProtonMail/proton-bridge/blob/5348ae7d183da194bd3f051ca723ca2efb99da7a/.golangci.yml)
* (Go) **TeleIRC**:
  [git repo](https://github.com/RITlug/teleirc), [Travis CI config](https://github.com/RITlug/teleirc/blob/master/.travis.yml), [Travis CI builds](https://travis-ci.org/github/RITlug/teleirc)
* (Python) **datanommer**:
  [git repo](https://github.com/fedora-infra/datanommer), [Travis CI config](https://github.com/fedora-infra/datanommer/blob/develop/.travis.yml), [Travis CI builds](https://travis-ci.org/github/fedora-infra/datanommer)
* (Ruby) **fossrit.github.io**:
  [git repo](https://github.com/FOSSRIT/fossrit.github.io), [Travis CI config](https://github.com/FOSSRIT/fossrit.github.io/blob/master/.travis.yml), [Travis CI builds](https://travis-ci.org/github/FOSSRIT/fossrit.github.io)


## Other resources

Curious to know more?
The resources below explain other concepts about Continuous Integration in greater detail:

* [Continuous Integration Essentials](https://codeship.com/continuous-integration-essentials) - _Codeship_
