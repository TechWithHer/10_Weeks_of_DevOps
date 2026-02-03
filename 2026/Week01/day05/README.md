# Day 8 Task: Basic Git & GitHub for DevOps Engineers.

## What is Git?

Git is a version control system that allows you to track changes to files and coordinate work on those files among multiple people. It is commonly used for software development, but it can be used to track changes to any set of files.

With Git, you can keep a record of who made changes to what part of a file, and you can revert back to earlier versions of the file if needed. Git also makes it easy to collaborate with others, as you can share changes and merge the changes made by different people into a single version of a file.

## What is Github?

GitHub is a web-based platform that provides hosting for version control using Git. It is a subsidiary of Microsoft, and it offers all of the distributed version control and source code management (SCM) functionality of Git as well as adding its own features. GitHub is a very popular platform for developers to share and collaborate on projects, and it is also used for hosting open-source projects.

## What is Version Control? How many types of version controls we have?

Version control is a system that tracks changes to a file or set of files over time so that you can recall specific versions later. It allows you to revert files back to a previous state, revert the entire project back to a previous state, compare changes over time, see who last modified something that might be causing a problem, who introduced an issue and when, and more.

There are two main types of version control systems: centralized version control systems and distributed version control systems.

1. A centralized version control system (CVCS) uses a central server to store all the versions of a project's files. Developers "check out" files from the central server, make changes, and then "check in" the updated files. Examples of CVCS include Subversion and Perforce.

2. A distributed version control system (DVCS) allows developers to "clone" an entire repository, including the entire version history of the project. This means that they have a complete local copy of the repository, including all branches and past versions. Developers can work independently and then later merge their changes back into the main repository. Examples of DVCS include Git, Mercurial, and Darcs.

## Why we use distributed version control over centralized version control?

1. Better collaboration: In a DVCS, every developer has a full copy of the repository, including the entire history of all changes. This makes it easier for developers to work together, as they don't have to constantly communicate with a central server to commit their changes or to see the changes made by others.

2. Improved speed: Because developers have a local copy of the repository, they can commit their changes and perform other version control actions faster, as they don't have to communicate with a central server.

3. Greater flexibility: With a DVCS, developers can work offline and commit their changes later when they do have an internet connection. They can also choose to share their changes with only a subset of the team, rather than pushing all of their changes to a central server.

4. Enhanced security: In a DVCS, the repository history is stored on multiple servers and computers, which makes it more resistant to data loss. If the central server in a CVCS goes down or the repository becomes corrupted, it can be difficult to recover the lost data.

Overall, the decentralized nature of a DVCS allows for greater collaboration, flexibility, and security, making it a popular choice for many teams.

## Task:

- Install Git on your computer (if it is not already installed). You can download it from the official website at https://git-scm.com/downloads
- Create a free account on GitHub (if you don't already have one). You can sign up at https://github.com/
- Learn the basics of Git by reading through the [video](https://youtu.be/AT1uxOLsCdk) This will give you an understanding of what Git is, how it works, and how to use it to track changes to files.

## Exercises:

1. Create a new repository on GitHub and clone it to your local machine
2. Make some changes to a file in the repository and commit them to the repository using Git
3. Push the changes back to the repository on GitHub

Reff :- https://youtu.be/AT1uxOLsCdk

Post your daily work on Linkedin and le me know , writing an article is the best :)

[← Previous Day](../day07/README.md) | [Next Day →](../day09/README.md)

# Day 9 Task: Deep Dive in Git & GitHub for DevOps Engineers.

## Find the answers by your understandings(Shoulden't be copied by internet & used hand-made diagrams) of below quistions and Write blog on it.

1. What is Git and why is it important?
2. What is difference Between Main Branch and Master Branch??
3. Can you explain the difference between Git and GitHub?
4. How do you create a new repository on GitHub?
5. What is difference between local & remote repository? How to connect local to remote?

## Tasks

task-1:

- Set your user name and email address, which will be associated with your commits.

task-2:

- Create a repository named "Devops" on GitHub
- Connect your local repository to the repository on GitHub.
- Create a new file in Devops/Git/Day-02.txt & add some content to it
- Push your local commits to the repository on GitHub

reff :- https://youtu.be/AT1uxOLsCdk

Note: These steps assume that you have already installed Git on your computer and have created a GitHub account. If you need help with these prerequisites, you can refer to the [day-08](https://github.com/LondheShubham153/90DaysOfDevOps/blob/ee7c53f276edb02a85a97282027028295be17c04/2023/day08/README.md)

[← Previous Day](../day08/README.md) | [Next Day →](../day10/README.md)

# Day 10 Task: Advance Git & GitHub for DevOps Engineers.

## Git Branching

Use a branch to isolate development work without affecting other branches in the repository. Each repository has one default branch, and can have multiple other branches. You can merge a branch into another branch using a pull request.

Branches allow you to develop features, fix bugs, or safely experiment with new ideas in a contained area of your repository.

## Git Revert and Reset

Two commonly used tools that git users will encounter are those of git reset and git revert . The benefit of both of these commands is that you can use them to remove or edit changes you’ve made in the code in previous commits.

## Git Rebase and Merge

### What Is Git Rebase?

Git rebase is a command that lets users integrate changes from one branch to another, and the logs are modified once the action is complete. Git rebase was developed to overcome merging’s shortcomings, specifically regarding logs.

### What Is Git Merge?

Git merge is a command that allows developers to merge Git branches while the logs of commits on branches remain intact.

The merge wording can be confusing because we have two methods of merging branches, and one of those ways is actually called “merge,” even though both procedures do essentially the same thing.

Refer to this article for a better understanding of Git Rebase and Merge [Read here](https://www.simplilearn.com/git-rebase-vs-merge-article)

## Task 1:

Add a text file called version01.txt inside the Devops/Git/ with “This is first feature of our application” written inside.
This should be in a branch coming from `master`,
[hint try `git checkout -b dev`],
swithch to `dev` branch ( Make sure your commit message will reflect as "Added new feature").
[Hint use your knowledge of creating branches and Git commit command]

- version01.txt should reflect at local repo first followed by Remote repo for review.
  [Hint use your knowledge of Git push and git pull commands here]

Add new commit in `dev` branch after adding below mentioned content in Devops/Git/version01.txt:
While writing the file make sure you write these lines

- 1st line>> This is the bug fix in development branch
- Commit this with message “ Added feature2 in development branch”

- 2nd line>> This is gadbad code
- Commit this with message “ Added feature3 in development branch

- 3rd line>> This feature will gadbad everything from now.
- Commit with message “ Added feature4 in development branch

Restore the file to a previous version where the content should be “This is the bug fix in development branch”
[Hint use git revert or reset according to your knowledge]

## Task 2:

- Demonstrate the concept of branches with 2 or more branches with screenshot.
- add some changes to `dev` branch and merge that branch in `master`
- as a practice try git rebase too, see what difference you get.

## Note:

We should learn and follow the [best practices](https://www.flagship.io/git-branching-strategies/) , industry follows for branching.

Simple Reference on branching: [video](https://youtu.be/NzjK9beT_CY)

Advance Reference on branching : [video](https://youtu.be/7xhkEQS3dXw)

You can Post on LinkedIn and let us know what you have learned from this task by #90DaysOfDevOps Challenge. Happy Learning :)

[← Previous Day](../day09/README.md) | [Next Day →](../day11/README.md)


#