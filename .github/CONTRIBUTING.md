How to contribute to UNICEF Open Source Inventory
=================================================

Thank you for your interest in contributing to the UNICEF Open Source Inventory!
This page explains logistics of contributing, how to set up the project locally, and tips for submitting new patches.


## Is your contribution content, code, or something else?

First, decide if you are interested in submitting either **content**, **code**, or something else.
We accept both updates & revisions to existing content and code to improve the user interface and experience.
Other contribution ideas are welcome, but if you do not see something listed here, you may have to propose it.


## Propose new ideas

Do you have new ideas for content?
Is there incorrect information on the website?
Have ideas on how to make the site look-and-feel better?
**Everything starts first as an issue-driven discussion**.
Open a GitHub issue to raise your idea or proposal to the UNICEF Community:

### **For content & writing**: [unicef/inventory](https://github.com/unicef/inventory/issues/new/choose)

### **For design & code**: [unicef/inventory-hugo-theme](https://github.com/unicef/inventory-hugo-theme/issues/new/choose)


## Create a local environment of the Inventory

If you intend to contribute content or code to the UNICEF Open Source Inventory, you need a local environment.
The local environment is how you run a copy of the website on your own machine.
This way, you can test changes first before submitting them for review.

### Pre-requirements

* Git
* Hugo
  (see [**installation documentation**](https://gohugo.io/getting-started/installing/ "How to install the Hugo documentation toolchain"))
* AsciiDoctor
  (see [**installation documentation**](https://docs.asciidoctor.org/asciidoctor/latest/install/ "How to install the AsciiDoctor toolchain"))
	* This is because many of the UNICEF Open Source Inventory pages are written in AsciiDoc.
	  You must have AsciiDoctor installed in order for Hugo to build the site successfully.

### Clone repository

You need to clone the [git submodule](https://www.atlassian.com/git/tutorials/git-submodule) of the [unicef/inventory-hugo-theme](https://github.com/unicef/inventory-hugo-theme) repository for the site to build correctly.
Use the following command to clone the git repository:

```bash
# SSH
git clone --recurse-submodules git@github.com:unicef/inventory.git

# HTTPS
git clone --recurse-submodules https://github.com/unicef/inventory.git
```

### Start Hugo server

When you are ready to test your changes, start the Hugo server in a terminal with the following command:

```bash
cd /path/to/inventory
hugo serve
```

The UNICEF Open Source Inventory website should appear locally in your browser.
Navigate to [`localhost:1313/inventory/`](http://localhost:1313/inventory/) after starting the server to see a preview.

### Writing
Put [one sentence per line](https://asciidoctor.org/docs/asciidoc-recommended-practices/#one-sentence-per-line).
