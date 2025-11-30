extends Node2D

var Room = preload( "res://room.tscn")

var tile_size = 32 # how big the tiles of the tile map that will generate
var  num_rooms = 7 # number of rooms generating 
var min_size = 4 # min number of tiles that a room width or height can be
var max_size = 10 


func _ready():
	randomize() # to initialize the random number generator
	make_rooms()
	
func make_rooms(): # function that generates all of the rooms
	for i in range(num_rooms):
		var pos = Vector2(0,0)
		var r = Room.instance()
		var w = min_size + randi() % (max_size - min_size)
		var h = min_size + randi() % (max_size - min_size)
		r.make_rooms(pos, Vector2(w, h) * tile_size)
		$Rooms.add_child(r)
	
