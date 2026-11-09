# KeeForge Homebrew Tap

Homebrew cask for [KeeForge](https://keeforge.com), the KeePass-compatible password manager for Mac.

## Install

```bash
brew tap keeforge/tap
brew trust --cask keeforge/tap/keeforge
brew install --cask keeforge
```

Homebrew 7 loads casks from third-party taps only after you trust them; the second command trusts this one cask rather than the whole tap.

This installs the notarized direct-download build from [GitHub Releases](https://github.com/KeeForge/KeeForge/releases). The app then updates itself through Sparkle, so `brew upgrade` skips it unless you pass `--greedy`.

The Mac App Store and direct builds are both named `KeeForge.app` and share the same data. Remove the App Store copy before installing this cask.

## Maintenance

After each KeeForge release is public and its appcast is live, set `version` to `"{marketing version},{build}"` and `sha256` to the release zip's SHA-256 (both are in the candidate's `direct-artifact.json`), then check and push:

```bash
brew style keeforge/tap
brew audit --cask --strict --online keeforge/tap/keeforge
brew livecheck --cask keeforge/tap/keeforge
```

The `audit` workflow runs the same checks on every push and pull request.
