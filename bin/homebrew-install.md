   Homebrew

==> This script will install:
/usr/local/bin/brew
/usr/local/share/doc/homebrew
/usr/local/share/man/man1/brew.1
/usr/local/share/zsh/site-functions/_brew
/usr/local/etc/bash_completion.d/brew
/usr/local/Homebrew
==> The following new directories will be created:
/usr/local/bin
/usr/local/etc
/usr/local/include
/usr/local/lib
/usr/local/sbin
/usr/local/share
/usr/local/var
/usr/local/opt
/usr/local/share/zsh
/usr/local/share/zsh/site-functions
/usr/local/var/homebrew
/usr/local/var/homebrew/linked
/usr/local/Cellar
/usr/local/Caskroom
/usr/local/Homebrew
/usr/local/Frameworks
==> The Xcode Command Line Tools will be installed.

Press RETURN to continue or any other key to abort
   [✖] Homebrew 
./bin/install_homebrew.sh: line 67: brew_update: command not found
alex@MacAir laptop % ./setup
Running in /Users/alex/projects/laptop

 • ############### Homebrew ###############

==> This script will install:
/usr/local/bin/brew
/usr/local/share/doc/homebrew
/usr/local/share/man/man1/brew.1
/usr/local/share/zsh/site-functions/_brew
/usr/local/etc/bash_completion.d/brew
/usr/local/Homebrew
==> The following new directories will be created:
/usr/local/bin
/usr/local/etc
/usr/local/include
/usr/local/lib
/usr/local/sbin
/usr/local/share
/usr/local/var
/usr/local/opt
/usr/local/share/zsh
/usr/local/share/zsh/site-functions
/usr/local/var/homebrew
/usr/local/var/homebrew/linked
/usr/local/Cellar
/usr/local/Caskroom
/usr/local/Homebrew
/usr/local/Frameworks
==> The Xcode Command Line Tools will be installed.

Press RETURN to continue or any other key to abort
==> /usr/bin/sudo /bin/mkdir -p /usr/local/bin /usr/local/etc /usr/local/include /usr/local/lib /usr/local/sbin /usr/local/share /usr/local/var /usr/local/opt /usr/local/share/zsh /usr/local/share/zsh/site-functions /usr/local/var/homebrew /usr/local/var/homebrew/linked /usr/local/Cellar /usr/local/Caskroom /usr/local/Homebrew /usr/local/Frameworks
==> /usr/bin/sudo /bin/chmod g+rwx /usr/local/bin /usr/local/etc /usr/local/include /usr/local/lib /usr/local/sbin /usr/local/share /usr/local/var /usr/local/opt /usr/local/share/zsh /usr/local/share/zsh/site-functions /usr/local/var/homebrew /usr/local/var/homebrew/linked /usr/local/Cellar /usr/local/Caskroom /usr/local/Homebrew /usr/local/Frameworks
==> /usr/bin/sudo /usr/sbin/chown alex /usr/local/bin /usr/local/etc /usr/local/include /usr/local/lib /usr/local/sbin /usr/local/share /usr/local/var /usr/local/opt /usr/local/share/zsh /usr/local/share/zsh/site-functions /usr/local/var/homebrew /usr/local/var/homebrew/linked /usr/local/Cellar /usr/local/Caskroom /usr/local/Homebrew /usr/local/Frameworks
==> /usr/bin/sudo /usr/bin/chgrp admin /usr/local/bin /usr/local/etc /usr/local/include /usr/local/lib /usr/local/sbin /usr/local/share /usr/local/var /usr/local/opt /usr/local/share/zsh /usr/local/share/zsh/site-functions /usr/local/var/homebrew /usr/local/var/homebrew/linked /usr/local/Cellar /usr/local/Caskroom /usr/local/Homebrew /usr/local/Frameworks
==> /usr/bin/sudo /bin/mkdir -p /Users/alex/Library/Caches/Homebrew
==> /usr/bin/sudo /bin/chmod g+rwx /Users/alex/Library/Caches/Homebrew
==> /usr/bin/sudo /usr/sbin/chown alex /Users/alex/Library/Caches/Homebrew
==> Searching online for the Command Line Tools
==> /usr/bin/sudo /usr/bin/touch /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress
==> Installing Command Line Tools for Xcode-12.2
==> /usr/bin/sudo /usr/sbin/softwareupdate -i Command\ Line\ Tools\ for\ Xcode-12.2
Software Update Tool

Finding available software

Downloading Command Line Tools for Xcode

Downloaded Command Line Tools for Xcode
Installing Command Line Tools for Xcode
Done with Command Line Tools for Xcode
Done.
==> /usr/bin/sudo /bin/rm -f /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress
Password:
Sorry, try again.
Password:
==> /usr/bin/sudo /usr/bin/xcode-select --switch /Library/Developer/CommandLineTools
==> Downloading and installing Homebrew...
remote: Enumerating objects: 51, done.
remote: Counting objects: 100% (51/51), done.
remote: Compressing objects: 100% (51/51), done.
remote: Total 160565 (delta 1), reused 46 (delta 0), pack-reused 160514
Receiving objects: 100% (160565/160565), 41.07 MiB | 5.88 MiB/s, done.
Resolving deltas: 100% (119000/119000), done.
From https://github.com/Homebrew/brew
 * [new branch]      master             -> origin/master
 * [new branch]      triage-review      -> origin/triage-review
 * [new branch]      vendor-gems-update -> origin/vendor-gems-update
 * [new tag]             0.1                -> 0.1
 * [new tag]             0.2                -> 0.2
 * [new tag]             0.3                -> 0.3
 * [new tag]             0.4                -> 0.4
 * [new tag]             0.5                -> 0.5
 * [new tag]             0.6                -> 0.6
 * [new tag]             0.7                -> 0.7
 * [new tag]             0.7.1              -> 0.7.1
 * [new tag]             0.8                -> 0.8
 * [new tag]             0.8.1              -> 0.8.1
 * [new tag]             0.9                -> 0.9
 * [new tag]             0.9.1              -> 0.9.1
 * [new tag]             0.9.2              -> 0.9.2
 * [new tag]             0.9.3              -> 0.9.3
 * [new tag]             0.9.4              -> 0.9.4
 * [new tag]             0.9.5              -> 0.9.5
 * [new tag]             0.9.8              -> 0.9.8
 * [new tag]             0.9.9              -> 0.9.9
 * [new tag]             1.0.0              -> 1.0.0
 * [new tag]             1.0.1              -> 1.0.1
 * [new tag]             1.0.2              -> 1.0.2
 * [new tag]             1.0.3              -> 1.0.3
 * [new tag]             1.0.4              -> 1.0.4
 * [new tag]             1.0.5              -> 1.0.5
 * [new tag]             1.0.6              -> 1.0.6
 * [new tag]             1.0.7              -> 1.0.7
 * [new tag]             1.0.8              -> 1.0.8
 * [new tag]             1.0.9              -> 1.0.9
 * [new tag]             1.1.0              -> 1.1.0
 * [new tag]             1.1.1              -> 1.1.1
 * [new tag]             1.1.10             -> 1.1.10
 * [new tag]             1.1.11             -> 1.1.11
 * [new tag]             1.1.12             -> 1.1.12
 * [new tag]             1.1.13             -> 1.1.13
 * [new tag]             1.1.2              -> 1.1.2
 * [new tag]             1.1.3              -> 1.1.3
 * [new tag]             1.1.4              -> 1.1.4
 * [new tag]             1.1.5              -> 1.1.5
 * [new tag]             1.1.6              -> 1.1.6
 * [new tag]             1.1.7              -> 1.1.7
 * [new tag]             1.1.8              -> 1.1.8
 * [new tag]             1.1.9              -> 1.1.9
 * [new tag]             1.2.0              -> 1.2.0
 * [new tag]             1.2.1              -> 1.2.1
 * [new tag]             1.2.2              -> 1.2.2
 * [new tag]             1.2.3              -> 1.2.3
 * [new tag]             1.2.4              -> 1.2.4
 * [new tag]             1.2.5              -> 1.2.5
 * [new tag]             1.2.6              -> 1.2.6
 * [new tag]             1.3.0              -> 1.3.0
 * [new tag]             1.3.1              -> 1.3.1
 * [new tag]             1.3.2              -> 1.3.2
 * [new tag]             1.3.3              -> 1.3.3
 * [new tag]             1.3.4              -> 1.3.4
 * [new tag]             1.3.5              -> 1.3.5
 * [new tag]             1.3.6              -> 1.3.6
 * [new tag]             1.3.7              -> 1.3.7
 * [new tag]             1.3.8              -> 1.3.8
 * [new tag]             1.3.9              -> 1.3.9
 * [new tag]             1.4.0              -> 1.4.0
 * [new tag]             1.4.1              -> 1.4.1
 * [new tag]             1.4.2              -> 1.4.2
 * [new tag]             1.4.3              -> 1.4.3
 * [new tag]             1.5.0              -> 1.5.0
 * [new tag]             1.5.1              -> 1.5.1
 * [new tag]             1.5.10             -> 1.5.10
 * [new tag]             1.5.11             -> 1.5.11
 * [new tag]             1.5.12             -> 1.5.12
 * [new tag]             1.5.13             -> 1.5.13
 * [new tag]             1.5.14             -> 1.5.14
 * [new tag]             1.5.2              -> 1.5.2
 * [new tag]             1.5.3              -> 1.5.3
 * [new tag]             1.5.4              -> 1.5.4
 * [new tag]             1.5.5              -> 1.5.5
 * [new tag]             1.5.6              -> 1.5.6
 * [new tag]             1.5.7              -> 1.5.7
 * [new tag]             1.5.8              -> 1.5.8
 * [new tag]             1.5.9              -> 1.5.9
 * [new tag]             1.6.0              -> 1.6.0
 * [new tag]             1.6.1              -> 1.6.1
 * [new tag]             1.6.10             -> 1.6.10
 * [new tag]             1.6.11             -> 1.6.11
 * [new tag]             1.6.12             -> 1.6.12
 * [new tag]             1.6.13             -> 1.6.13
 * [new tag]             1.6.14             -> 1.6.14
 * [new tag]             1.6.15             -> 1.6.15
 * [new tag]             1.6.16             -> 1.6.16
 * [new tag]             1.6.17             -> 1.6.17
 * [new tag]             1.6.2              -> 1.6.2
 * [new tag]             1.6.3              -> 1.6.3
 * [new tag]             1.6.4              -> 1.6.4
 * [new tag]             1.6.5              -> 1.6.5
 * [new tag]             1.6.6              -> 1.6.6
 * [new tag]             1.6.7              -> 1.6.7
 * [new tag]             1.6.8              -> 1.6.8
 * [new tag]             1.6.9              -> 1.6.9
 * [new tag]             1.7.0              -> 1.7.0
 * [new tag]             1.7.1              -> 1.7.1
 * [new tag]             1.7.2              -> 1.7.2
 * [new tag]             1.7.3              -> 1.7.3
 * [new tag]             1.7.4              -> 1.7.4
 * [new tag]             1.7.5              -> 1.7.5
 * [new tag]             1.7.6              -> 1.7.6
 * [new tag]             1.7.7              -> 1.7.7
 * [new tag]             1.8.0              -> 1.8.0
 * [new tag]             1.8.1              -> 1.8.1
 * [new tag]             1.8.2              -> 1.8.2
 * [new tag]             1.8.3              -> 1.8.3
 * [new tag]             1.8.4              -> 1.8.4
 * [new tag]             1.8.5              -> 1.8.5
 * [new tag]             1.8.6              -> 1.8.6
 * [new tag]             1.9.0              -> 1.9.0
 * [new tag]             1.9.1              -> 1.9.1
 * [new tag]             1.9.2              -> 1.9.2
 * [new tag]             1.9.3              -> 1.9.3
 * [new tag]             2.0.0              -> 2.0.0
 * [new tag]             2.0.1              -> 2.0.1
 * [new tag]             2.0.2              -> 2.0.2
 * [new tag]             2.0.3              -> 2.0.3
 * [new tag]             2.0.4              -> 2.0.4
 * [new tag]             2.0.5              -> 2.0.5
 * [new tag]             2.0.6              -> 2.0.6
 * [new tag]             2.1.0              -> 2.1.0
 * [new tag]             2.1.1              -> 2.1.1
 * [new tag]             2.1.10             -> 2.1.10
 * [new tag]             2.1.11             -> 2.1.11
 * [new tag]             2.1.12             -> 2.1.12
 * [new tag]             2.1.13             -> 2.1.13
 * [new tag]             2.1.14             -> 2.1.14
 * [new tag]             2.1.15             -> 2.1.15
 * [new tag]             2.1.16             -> 2.1.16
 * [new tag]             2.1.2              -> 2.1.2
 * [new tag]             2.1.3              -> 2.1.3
 * [new tag]             2.1.4              -> 2.1.4
 * [new tag]             2.1.5              -> 2.1.5
 * [new tag]             2.1.6              -> 2.1.6
 * [new tag]             2.1.7              -> 2.1.7
 * [new tag]             2.1.8              -> 2.1.8
 * [new tag]             2.1.9              -> 2.1.9
 * [new tag]             2.2.0              -> 2.2.0
 * [new tag]             2.2.1              -> 2.2.1
 * [new tag]             2.2.10             -> 2.2.10
 * [new tag]             2.2.11             -> 2.2.11
 * [new tag]             2.2.12             -> 2.2.12
 * [new tag]             2.2.13             -> 2.2.13
 * [new tag]             2.2.14             -> 2.2.14
 * [new tag]             2.2.15             -> 2.2.15
 * [new tag]             2.2.16             -> 2.2.16
 * [new tag]             2.2.17             -> 2.2.17
 * [new tag]             2.2.2              -> 2.2.2
 * [new tag]             2.2.3              -> 2.2.3
 * [new tag]             2.2.4              -> 2.2.4
 * [new tag]             2.2.5              -> 2.2.5
 * [new tag]             2.2.6              -> 2.2.6
 * [new tag]             2.2.7              -> 2.2.7
 * [new tag]             2.2.8              -> 2.2.8
 * [new tag]             2.2.9              -> 2.2.9
 * [new tag]             2.3.0              -> 2.3.0
 * [new tag]             2.4.0              -> 2.4.0
 * [new tag]             2.4.1              -> 2.4.1
 * [new tag]             2.4.10             -> 2.4.10
 * [new tag]             2.4.11             -> 2.4.11
 * [new tag]             2.4.12             -> 2.4.12
 * [new tag]             2.4.13             -> 2.4.13
 * [new tag]             2.4.14             -> 2.4.14
 * [new tag]             2.4.15             -> 2.4.15
 * [new tag]             2.4.16             -> 2.4.16
 * [new tag]             2.4.2              -> 2.4.2
 * [new tag]             2.4.3              -> 2.4.3
 * [new tag]             2.4.4              -> 2.4.4
 * [new tag]             2.4.5              -> 2.4.5
 * [new tag]             2.4.6              -> 2.4.6
 * [new tag]             2.4.7              -> 2.4.7
 * [new tag]             2.4.8              -> 2.4.8
 * [new tag]             2.4.9              -> 2.4.9
 * [new tag]             2.5.0              -> 2.5.0
 * [new tag]             2.5.1              -> 2.5.1
 * [new tag]             2.5.10             -> 2.5.10
 * [new tag]             2.5.11             -> 2.5.11
 * [new tag]             2.5.2              -> 2.5.2
 * [new tag]             2.5.3              -> 2.5.3
 * [new tag]             2.5.4              -> 2.5.4
 * [new tag]             2.5.5              -> 2.5.5
 * [new tag]             2.5.6              -> 2.5.6
 * [new tag]             2.5.7              -> 2.5.7
 * [new tag]             2.5.8              -> 2.5.8
 * [new tag]             2.5.9              -> 2.5.9
HEAD is now at 3f84af72b Merge pull request #9230 from iMichka/curl
==> Homebrew is run entirely by unpaid volunteers. Please consider donating:
  https://github.com/Homebrew/brew#donations
==> Tapping homebrew/core
Cloning into '/usr/local/Homebrew/Library/Taps/homebrew/homebrew-core'...
remote: Enumerating objects: 125, done.
remote: Counting objects: 100% (125/125), done.
remote: Compressing objects: 100% (106/106), done.
remote: Total 842133 (delta 61), reused 50 (delta 19), pack-reused 842008
Receiving objects: 100% (842133/842133), 334.07 MiB | 5.88 MiB/s, done.
Resolving deltas: 100% (567378/567378), done.
Tapped 2 commands and 5356 formulae (5,643 files, 366.7MB).
Already up-to-date.
==> Installation successful!

==> Homebrew has enabled anonymous aggregate formulae and cask analytics.
Read the analytics documentation (and how to opt-out) here:
  https://docs.brew.sh/Analytics
No analytics data has been sent yet (or will be during this `install` run).

==> Homebrew is run entirely by unpaid volunteers. Please consider donating:
  https://github.com/Homebrew/brew#donations

==> Next steps:
- Run `brew help` to get started
- Further documentation: 
    https://docs.brew.sh
   [✔] Homebrew
   [✔] Homebrew (opt-out of analytics)
./bin/install_homebrew.sh: line 67: brew_update: command not found
./bin/install_homebrew.sh: line 68: brew_upgrade: command not found
failed

alex@MacAir laptop % 