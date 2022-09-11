# Game Flow Orchestration

## Diagram

![Game Flow Diagram](https://live.staticflickr.com/65535/52350498449_58ca50f1e4_b.jpg)


## The GameData.json file

> Note that the above diagram currently refers to this file as 'game.json'

The central component that really drives the flow of everything is the
`GameData.json` file. Among other game data, this file will contain the list of
Stages to load and the order to load them in. This file is a structured
according to the example below.

**Example:**

```
{
  "title": "Example Game",
  "game_version": "1.0.0",
  "l2s_version": "0.1.4",
  "start_screen": "res://Stages/ExampleGame/GameStart.tscn",
  "mods": {
    1: {
      "mod_file": "SomeMod.pck",
      "mod_guid": "d7a47098f01fade890749048a680237110f5039f8ea90d2385a7a46aa9682061",
      "mod_version": "1.0.0",
      "mod_name": "Full name of mod"
    }
  },
  "stages": {
    1: {
      "stage_name": "First Stage",
      "scene_file": "res://Stages/ExampleGame/Stage1.tscn"
    },  
    2: {
      "stage_name": "Second Stage",
      "scene_file": "res://Stages/ExampleGame/Stage2.tscn"
    },
    3: {
      "stage_name": "Third Stage",
      "scene_file": "res://Stages/ExampleGame/Stage3.tscn"
    }
  }
}
```




## GameStart.tscn

The start screen serves the purpose of setting up the initial game state and
loading the first stage. It is also used as a return point for the game in the
event of reaching a "game over" state during play. This functionality is
provided by the addon via the ShmupStartScreen node. This could potentially have
an automically generated option.




## Stages

After the start screen loads the first Stage, as defined in `GameData.json`, the
Stages themselves take complete control over the orchestration based on the game
data. This functionality will be provided by the addon via the ShmupStage node.

A Stage is created by making a new scene (eg. `MyScene.tscn`) using the
ShmupStage node provided by the addon. From there you would set the map art, add
obstacles and enemy spawners, and code any special functionality specific to
that Stage.
