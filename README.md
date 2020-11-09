# Toolbox

These are simple scripts I integrate my shell environment with.

## Installation
Run `install-toolbox.ps1` in Powershell to copy the Powershell profile to the user's local Powershell directory.

*This will overwrite the current Powershell profile!*

## TODO: Tool Designs

### TOOL 1: grind

#### USE CASE
```
I am two weeks into a game jam I joined and I wake up to do some work on it.

I turn on the monitor to my computer which has no foreground programs running.

I open up a Powershell window and type 'grind some-game-jam'.

It opens up Unity, Visual Studio, a link to the Unity docs, a specific Spotify playlist that starts playing on the desktop client. 

The Powershell window that was used to run the grind program changes to the project's directory or exit.
```

#### PREMISE
Let's assume that every personal project I work on has a `_grind` script. 
The `_grind` script consists of two sections: `.install` and `.grind`.

When recloning my projects, I run the `_grind` script with an input of a `keyword` so that:
	1. The project's dependencies are installed (`pip/npm` packages, Makefiles, etc.)
	2. The project registers itself to the `grind` program installed on the computer under the keyword
		- it registers a key:value pair, with the key being the keyword and the value being the directory of the `_grind` script

The installation instructions for a `_grind` script is under its `.install` section.
The automated setup of the development environment to work on a project is under the `_grind` script's `.grind` section.

When the `grind` program is supplied a keyword, it checks its registered keywords and `_grind` scripts.
It executes the `_grind.grind` section of any matching keywords to set up the development environment.

#### GRIND DEVELOPER PROFILES
Each developer has their own preference of environment when working on a project. They should be able to customize how each `.grind` environment starts.

Maybe for one (or all) projects, a certain Spotify playlist starts playing on the Desktop client.

Maybe for one project, each separate program opened in the `.grind` environment opens in windows of certain sizes and orientations.
	- for one project, there could be one such window layout written for dual monitors, and another for a single ultrawide screen

#### EXTENDABILITY/NOTES
1. This should support Windows 7/10 and some Linux--maybe Red Hat/Fedora. 
2. Should the `grind` program be able to analyze a source code directory root and generate a `_grind` script?
	- This concept could be called a 'source code profile' or something, and different profiles could be written for different project types
	- ex: Unity projects, Python projects, Java projects, etc.
	- optionally: could have inheritance
		- ex: a Django 3.0 source code profile that inherits from the Python source code profile
3. The `.grind` program should have to call simple plugins (cli programs) for its functionality
	- ideally, the `grind` program would be smart enough to know which version plugin to use
	- ex: a Windows 7/10 Chrome plugin to open documentation pages, a Unity plugin to open the Unity Engine
	- ex: a Windows 10 Desktop Spotify client plugin to open Spotify links, a plugin to arrange a Windows 10 desktop window to certain sizes

