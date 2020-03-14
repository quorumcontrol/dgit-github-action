# `dgit-github-action`

A GitHub Action to push branches to dgit, primarily for syncing up after PRs.

Usage:

```
- uses: quorumcontrol/dgit-github-action@master
  env:
    DGIT_PRIVATE_KEY: ${{ secrets.DGIT_PRIVATE_KEY }}
```