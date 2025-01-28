---
title: git - next level
date: September 22, 2020
---

## cherry-pick
Will apply selected commit to current branch

> git cherry-pick <commit-hash>

## reset

Will remove the lastest commit. The changes are kept in the working directory and staging area, so that they are ready to be committed again if needed.
> git reset --soft HEAD~1

Will remove both the lastest commit and the changes in it.
> git reset --hard HEAD~1