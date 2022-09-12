# Notes for the learn2shmup modding system

General notes for research and planning of the modding system.




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

### Technical Requirements for 0.1.x

* Well-defined file/folder structure
* Custom addon to provide framework of basetype nodes
* Game flow orchestration (BaseTypeNodes <--> Stages <--> `game.json`)
* Mod Management System (install, identify, select, and load)




## Research

Research notes and links to external docs related to the modding system go in this section.


### Existing addons

There is already an addon for Godot that can handle mods called "Modular Godot"
(Link 5). However, the integrated nature of mods for the project means a custom
system would make sense. It may be useful to reference that project for how
they accomplished some things. If anything is copied (directly or indirectly)
from that project, then proper attribution **must** be included with L2S.

### Open Questions

* How will the nodes be implemented in the addon?
* How to properly decouple everything?
* How exactly does the framework orchestrate resources into a playable game.
  * Make all resource loading automatic and/or input-based
* What workflow(s), tools, and docs should be made?
  * Extra Modder tools?
  * Packaging options?
  * API?
  * DevKit?
  * Sphinx doc engine?
* Local mod awareness
  * Full games list with at least one example game included.
  * Customizable mod profiles and user settings
* Determine boundaries for customizability.


### Links

1. https://docs.godotengine.org/en/stable/tutorials/io/data_paths.html
2. https://docs.godotengine.org/en/stable/tutorials/export/exporting_pcks.html
3. https://docs.godotengine.org/en/stable/tutorials/export/feature_tags.html
4. https://docs.godotengine.org/en/stable/classes/class_projectsettings.html#class-projectsettings-method-load-resource-pack
5. https://gitlab.com/sdggames/godot-common-library/-/tree/release/godot-mod-loader-v1.0
