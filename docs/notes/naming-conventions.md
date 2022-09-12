# Naming conventions for learn2shmup

## General guidelines

* Make all names clear and concise.
* Use full words more often than not.
* Use consistent abbreviations throughout the entire project.
* All names should represent the purpose of the functionality they provide.




## Scenes, Nodes, and files use CamelCase

* Everything in the scene tree and file tree should be `CamelCase`
* The name of .tscn files should be the same as their top-level node's name.
* Any scripts attached to nodes should have the same name as the node.
* It is also recommended to include the name of the basetype node that it inherits from.




## Variables, signals, and funcs use lower_snake_case

* Most everything in scripts should be in `lower_snake_case`.
* Use a node's CamelCase name only if the code is specifically coupled to that node.




## Planned file structure for version 0.1.x

> NOTE
> Any omitted files/folders (ie. `project.godot`, `LICENSE`, and the gut addon) are currently exempt from these naming conventions.

* addons
  * ShmupWerx
* Art
  * Bullet.png
  * Enemy.png
  * PlayerShip.png
* Bullets
  * Bullet.gd
* Enemies
  * Enemy.gd
  * RngEnemySpawner
    * RngEnemySpawner.gd
    * RngEnemySpawner.tscn
    * RngEnemySpawnerTimer.gd
* GameData
    * ExampleGame.json
* ModManager
  * ModFinder.gd
  * GameLoader.gd
  * ModManager.tscn
  * ModManager.gd
* Mods
  * README.md
* Player
  * Player.gd
  * Player.tscn
  * PlayerMovement.gd
  * PlayerShip.gd
  * PlayerWeapon.gd
* Stages
  * Stage0
    * Stage0.gd
    * Stage0.tscn
* Test
  * Integration
  * Unit
    * TestPlayer.gd
  * TestScene.tscn
