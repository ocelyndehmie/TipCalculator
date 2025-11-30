extends RigidBody2D

var size # keep track of the size of the room

 #Script to generate a room
func make_rooms(_pos,_size):
	position = _pos
	size = _size
	var s = RectangleShape2D.new()
	s.extends = size
	$CollisionShape2D.shape = s
	
	
