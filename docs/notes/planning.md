# Main planning document for learn2shmup

This document is meant to hold notes related to project planning.


## General Concept

The game will be a space-themed scrolling shmup, like what was popular on SNES
and Genesis in the 90s.

**Ideas for general game-wide themes:**
- (none yet)


---


## Versioning scheme

The versioning for the project will use a fairly simple scheme:

```
(major).(minor).(patch)
```


### major

The `major` version indicates a major release. Versions `0.x` indicate an
incomplete alpha/beta version.

Version `1.0.0` will indicate that all project goals have been achieved and the
codebase is generally stable. From that point, the project will be considered
complete and in "maintenance status" with `1.x` updates being largely bug
fixing patches and community driven features without preconceived plans from
the core development team. If no community grows around the 1.0.0 release, then
this project will be abandoned and clearly marked as inactive.

There are currently no plans for any `2.x` releases.


### minor

The `minor` version indicates two things:

  1. *Development Milestones* - Typically, this is either an individual feature or a collection of small interrelated features that are planned for the project.
  2. *Stability status* - Odd numbers indicate an incomplete and potentially unstable version, and even numbers represent a completed and stable version for a particular milestone. For example:
    - Version number `0.1.0` is the first development version.
    - Once its development milestone goals are met, it will be merged into the **main** branch for the repo and its version number will be changed to `0.2.0`.
    - When development starts on the next milestone, the `0.2.x` version increase(s) and any patches to it will be merged into the **devel** branch and updated once more to `0.3.0` before any of its planned changes are implemented.


### patch

The `patch` version indicates smaller changes that are applied to a particular
`minor` version. Generally, they are either bug-fixes to the **main** branch or
pull requests that were merged into the **devel** branch.


---


## Essential shmup components

The main components of a shmup style game are:

### Player object

The thing that the player controls.

**Ideas:**
- (none yet)


### Enemies

The things that the player kills.

**Ideas:**
- (none yet)


### Maps

The background and obstacles

**Ideas:**
- (none yet)


---


## List of planned work

- [ ] Player
  - [X] Ship Sprite
  - [ ] Properties
    - [ ] Health
    - [ ] Powerups
    - [ ] Others?
  - [X] Movement coding
  - [X] Projectiles
  - [ ] Heads-up Display
  - [ ] Camera? (For scrolling)
- [ ] Enemies
  - [ ] Spawning and/or Placing
  - [ ] Basic Enemy
    - [X] Sprite
    - [X] Simple Movement
    - [ ] Simple Attack pattern
    - [X] Collisions
  - [ ] Special Enemy 1
    - [ ] Sprite
    - [ ] Movement
    - [ ] Attack pattern
  - [ ] Special Enemy 2
    - [ ] Sprite
    - [ ] Movement
    - [ ] Attack pattern
  - [ ] Boss 1
    - [ ] Boss Sprites
    - [ ] Boss coding
  - [ ] Boss 2
    - [ ] Boss Sprites
    - [ ] Boss coding
  - [ ] Boss 3
    - [ ] Boss Sprites
    - [ ] Boss coding
- [ ] Maps/Levels
  - [ ] Parallax Scrolling
    - [ ] Background Artwork
  - [ ] Basic obstacles
    - [ ] Obstacle Tileset(s)
