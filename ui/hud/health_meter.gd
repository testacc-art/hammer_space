extends Control

@onready var full := $Full as TextureRect
@onready var empty := $Empty as TextureRect

func _ready():
  Globals.player.hp_changed.connect(_hp_changed)
  var max_hp := Globals.player.max_health
  full.size.x = max_hp * 5 + 1
  empty.size.x = max_hp * 5 + 1

func _hp_changed(hp: int):
  full.size.x = hp * 5 + 1
