---
title: git - next steps
---

# git - continued

## cherry-pick
Will apply selected commit to current branch
```bash
git cherry-pick commit-hash
```

Multiple commits:
```bash
git cherry-pick commit-hash1 commit-hash2 commit-hash3
```

Using the --no-commit option with git cherry-pick allows you to apply changes from a specific commit to your working directory and staging area without creating a new commit. This gives you the flexibility ot review and modify the changes before committing them.
```bash
git cherry-pick --no-commit commit-hash
```

## reset

Will remove the lastest commit. The changes are kept in the working directory and staging area, so that they are ready to be committed again if needed.

```bash
git reset --soft HEAD~1
```

Will remove both the lastest commit and the changes in it.
```bash
git reset --hard HEAD~1
```