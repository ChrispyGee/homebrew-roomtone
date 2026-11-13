# Homebrew tap for Roomtone

[Roomtone](https://github.com/ChrispyGee/Roomtone) is a free, open-source controller for S1 and S2 wireless speaker systems (macOS on Apple silicon here).

```sh
brew install --cask ChrispyGee/roomtone/roomtone
```

Roomtone isn't signed or notarised by Apple yet, so macOS asks for confirmation the first time: right-click the app and choose *Open*.

The cask is generated from each Roomtone release (`packaging/package-managers` in the main repository), so this repository only holds `Casks/roomtone.rb`. Report problems at https://github.com/ChrispyGee/Roomtone/issues.

Licence: MIT OR Apache-2.0, as Roomtone.
