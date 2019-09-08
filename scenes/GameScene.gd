extends Node2D

var players = []
var player_gunner = preload("res://scenes/PlayerGunner.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	for i in range(5):
		_create_gunner(i*100,i*200);

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _create_gunner(x, y):
	var new_gunner = player_gunner.instance()
	new_gunner.position.x = x
	new_gunner.position.y = y
	add_child(new_gunner)