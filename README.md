# `dgit-github-action`

A GitHub Action that pushes branches to `dgit`.  This is primarily used to sync up github repo to `dgit` on push or PR.

Here is an example that forwards every push from GitHub to `dgit`:
https://github.com/quorumcontrol/dgit/blob/master/.github/workflows/dgit-push.yml

Usage:
```
- uses: quorumcontrol/dgit-github-action@master
  env:
    DGIT_PRIVATE_KEY: ${{ secrets.DGIT_PRIVATE_KEY }}
```

This will push the current branch from the GitHub action to `dgit` under the same name.

If your `dgit` repo is under a different name than your github repo, you may specify the `DGIT_REPOSITORY` env var. Ex:
````
- uses: quorumcontrol/dgit-github-action@master
  env:
    DGIT_PRIVATE_KEY: ${{ secrets.DGIT_PRIVATE_KEY }}
    DGIT_REPOSITORY: dwightschrute/computron
```