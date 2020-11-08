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
The `_grind` script consists of two sections:
	- `.install`
	- `.grind`

When recloning my projects, I run the `_grind` script with an input of a `keyword` so that:
	1. The project's dependencies are installed (`pip/npm` packages, Makefiles, etc.)
	2. The project registers itself to the `grind` program installed on the computer under the keyword
		- it registers a key:value pair, with the key being the keyword and the value being the directory of the `_grind` script

The installation instructions for a `_grind` script is under its `.install` section.
The automated setup of the development environment to work on a project is under the `_grind` script's `.grind` section.

When the `grind` program is supplied a keyword, it checks its registered keywords and `_grind` scripts.
It executes the `_grind.grind` section of any matching keywords to set up the development environment.

