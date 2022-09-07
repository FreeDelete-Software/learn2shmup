# Notes for the learn2shmup modding system

All notes for research and planning of the modding system for L2S.

## Background

The initial idea for the learn2shmup project started as a very simple game for
the devs to learn more about Godot. However, the project can help others learn
by becoming a modding framework for making shmup games in Godot. Somewhere
between "Mario Maker" and "Gary's Mod" for 2D shmups is the general concept.

### Ideas

* Allow for game-sized mods.
* Allow installing many conflicting mods. Only load specific packs at game launch.
* Simple "re-art" and "re-sound" packs (Just overwrite artistic content; no Godot required)
* "Mod Manager" at launch.
  * User-defined settings, properties, and launching profiles
  * Nexus Mods site integration? (mostly for checking updates)
* Create editor addon(s) to assist mod development



## Planning

### Diagram

![Initial Diagram](https://live.staticflickr.com/65535/52332519377_419a4825cc_b.jpg)


### Technical Requirements

* Identify all core resources for framework
  * Create "base typeclasses" for them
  * Should these be provided as an editor addon?
  * Decouple *everything*
* Make all resource loading automatic and/or input-based
* Define how framework orchestrates resources into a playable game.
  * Packaging options?
* Workflow(s), tools, and docs for mod development.
  * Godot editor addon(s)
  * API?
  * DevKit?
  * Sphinx doc engine?
* Local mod awareness
  * Full games list with at least one example game included.
  * Customizable mod profiles and user settings
* Determine boundries for mod manager customizability.
  * Is in-game level editor possible? If so, is it worth doing?
  * What is possible simply by defining a "mod profile"?


### Core components

#### Level

(placeholder)

#### Spawner

(placeholder)

#### Player

(placeholder)

#### Bullet

(placeholder)

#### Power-up

(placeholder)

#### Obstacle

(placeholder)

#### Enemy

(placeholder)

#### Boss

(placeholder)




## Research

Research notes and links to external docs related to the modding system go in this section.


### Existing addons

There is already an addon for Godot that can handle mods called "Modular Godot"
(Link 5). However, the integrated nature of mods for the project means a custom
system would make sense. It may be useful to reference that project for how
they accomplished some things. If anything is copied (directly or indirectly)
from that project, then proper attribution **must** be included with L2S.


### Links

1. https://docs.godotengine.org/en/stable/tutorials/io/data_paths.html
2. https://docs.godotengine.org/en/stable/tutorials/export/exporting_pcks.html
3. https://docs.godotengine.org/en/stable/tutorials/export/feature_tags.html
4. https://docs.godotengine.org/en/stable/classes/class_projectsettings.html#class-projectsettings-method-load-resource-pack
5. https://gitlab.com/sdggames/godot-common-library/-/tree/release/godot-mod-loader-v1.0
