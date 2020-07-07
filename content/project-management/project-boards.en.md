---
title: "Project boards"
weight: 10

---

This guide is an introduction to **project boards** for your open source project.
By the end of this guide, you will have a basic understanding of how to run project planning in an open, transparent way to your community.
What this guide is _NOT_ is a guide to agile/scrum development.
You should have a basic understanding of agile, scrum, and/or kanban before reading this article.

The following topics are covered:

1. About project boards
1. Case study: TeleIRC
1. Examples
1. Additional resources


## About project boards

Project boards are planning tools to help you track, monitor, and map software development.
Project boards are compatible with several different development methodologies and processes, such as scrum, agile, waterfall, kanban, and more.
In open source, project boards are one way to practice transparency in software development.
It also provides easier on-ramps for new contributors to your software project(s).

GitHub, GitLab, and several other code hosting platforms offer project boards as a feature.
The project boards integrate closely with software development and issue tracking, to make them accessible and available to developers and project managers.
For an agile-like approach, a basic kanban board is the recommended "entry-level" approach to launching your first public project board.
A project board for a new open source project might use the following columns:

* Backlog
* Blocked / waiting on external
* To do
* In progress
* Done

For new projects, a good initial goal is to surface **approximately two weeks of development priorities** in your project board(s).

### Why?

Why do project boards matter for your open source community?
Some of the key reasons are highlighted below:

1. **Avoid duplication of work**:
   New contributors can see what tasks are in progress by core team members.
   They can choose to work on other tasks that are not yet taken up.
1. **Emphasize development priorities to community**:
   Project boards help you communicate what work is most valuable to your project.
   A potential contributor can see the tasks that are important to the team, and they may choose to work on this task instead of working on a smaller, less helpful change.
1. **Keep development on track**:
   Project boards are generally a useful tool for understanding how developers are spending their time on the project.
   It also makes it easier to visualize overall team bandwidth (e.g. if someone is overloaded or if someone could take on a stretch goal in a sprint).


## Case study: TeleIRC

The TeleIRC project is a small open source community that uses project boards to guide development.
See the below board as an example:

![July 2020 screenshot of TeleIRC GitHub developer project board](/img/project-management/teleirc-project-board.png "July 2020 screenshot of TeleIRC GitHub developer project board")

This is an advanced example.
Guidelines that project managers use for this board are explained below:

* Columns:
    * **Done**:
      Work done in the current sprint.
      Each new sprint, this column is reset.
    * **Current sprint**:
      All work to be completed in the current sprint.
      All tasks must have an explicit assignee or lead.
    * **Next sprint**:
      Work that will be started in the next sprint.
      This list helps prioritize what is coming up next from the backlog.
      Might also be titled _Ready_.
* **Use of milestones**:
  Issues are tagged in relation to planned releases.
  In the above example, there are bugfix releases (`v2.0.1`), feature releases (`v2.1.0`), and undetermined releases (`v2.x.x`).
* **Clear issue labels**:
  All issues are labeled in helpful ways.
  For example, every issue must be labeled either as "new change" or an "improvement" (to something that is already implemented).

Questions?
Reach out to your Open Source mentor for more guidance or explanation.


## Examples

Need to see more examples?
The list below is a collection of real open source project boards.
These are used by various communities and projects around the world:

<!-- Alphabetical order based on first letter of project name. -->

* [django-rit-grasa](https://github.com/jwflory/django-rit-grasa):
  [**Fall 2019 development**](https://github.com/jwflory/django-rit-grasa/projects/1?fullscreen=true) (_example of a "completed" board for a 3-month project_)
* [_Fedora Project_](https://getfedora.org), [Red Hat](https://redhat.com):
  [**Fedora Program Manager Working Board**](https://teams.fedoraproject.org/project/bcotton-fpgm-working-board/kanban)
* [_RIT Linux Users Group_](https://ritlug.com), [Rochester Institute of Technology](https://www.rit.edu):
  [**RITlug operations board**](https://github.com/orgs/RITlug/projects/1?fullscreen=true)

Know some good examples?
Please help contribute to this list!


## Additional resources

* [3 tips for organizing your open source project's workflow on GitHub](https://opensource.com/article/18/4/keep-your-project-organized-git-repo) (Justin W. Flory, _opensource.com_)
* [5 open source alternatives to Trello](https://opensource.com/alternatives/trello) (_opensource.com_)
* [Contributors are Empowered When They Know the Process](https://www.redhat.com/en/blog/contributors-are-empowered-when-they-know-process) (Brian Exelbierd, _redhat.com_)
* [What is a kanban board?](https://www.atlassian.com/agile/kanban/boards) (Max Rehkopf, _atlassian.com_)
