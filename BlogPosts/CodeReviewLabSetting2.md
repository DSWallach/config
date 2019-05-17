# Code Review in a Lab Setting

## What is Code Review?
If you work at a software company you already know what this is, but you may not be familiar if you're just starting out. There are a plethora of posts covering how to set up a code review process (https://medium.freecodecamp.org/code-review-the-ultimate-guide-aa45c358bbf5), (https://medium.com/palantir/code-review-best-practices-19e02780015f), (https://www.atlassian.com/agile/software-development/code-reviews). So I'll just give a brief description before discussing the difficulties of code review in a lab setting.

Code review is essentially a process for maintaining a certain standard of code within a repository. My examples will be based of work-flows that use git but it can be applied to other types of version control. Before any changes can be merged into the master branch, another developer working on the repository must check the changes, make sure they are properly tested and fit the repository style before approving the pull request. This accomplishes two things. It ensures a certain level of code quality but it also ensures that other people working on the project will be familiar with the changes.

## Where does it make sense?
Large technology companies are famous for setting standards for code review. They will have many developers from multiple offices around the world all working on the same code base so it's essential that all changes are correct and properly documented. Even small software companies have many developers working on different parts of their code base. Code review is an essential component of ensuring that the product doesn't fail in production (or at least fails less). 

## Where is it unnecessary?
There is no question that code review improves code quality but is it always necessary? In a research lab environment there is often a single developer for each repository. Often there will be others in the same lab who that developer could request a review from, but they will typically not be familiar with the code bases of others projects. This makes the review process difficult and time-consuming. For this reason most labs don't require formal review of new code for existing projects.

## SO/
This makes sense from a speed of development standpoint but I think it contributes to the proliferation of poorly written in the scientific community, an issue many (https://www.ncbi.nlm.nih.gov/pmc/articles/PMC1560404/) others (https://blog.tetrascience.com/blog/why-is-scientific-software-so-bad-2/) have (https://techblog.bozho.net/the-astonishingly-low-quality-of-scientific-code/) noticed (https://academia.stackexchange.com/questions/17781/why-do-many-talented-scientists-write-horrible-software). It also contributes to the abandonment of many pieces of academic software after the paper is published. When only one person in a lab understands how a piece of software works, it is usually abandoned once they inevitably leave since it's not worth the time for someone new to try to learn how to maintain it.

Not everyone agrees that working more like a software developer is the solution to this (https://yosefk.com/blog/why-bad-scientific-code-beats-code-following-best-practices.html). However, I would argue that code review would reduce the prevalence of most of the issues laid out in the post. Whether they are attributed to software developers or scientists. Software developers reviewing scientist code will point out issues with instability, frivolous globals, and novel length functions. At the same time a scientist reviewing a developers code will question whether the complexity of multiple inheritance, function decorators, and overloaded functions is really necessary.

Over course the division between 'developers' and 'scientists' doesn't really exist. It is entirely possible for someone to be both a competent developer and dedicated scientist. Most people I've met do tend to fall closer to one side of the spectrum than the other. I think code review is an opportunity to pull everyone in a lab closer to the middle.