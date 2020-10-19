extends Node2D

export (PackedScene) var objects

var screenSize = Vector2.ZERO

func _ready():
	randomize()
	screenSize = get_viewport().get_visible_rect().size


func spawnObject():
	var objeto = objects.instance()
	var b = randi()%2+1 # 1 left, 2 right
	
	if(b == 1):
		objeto.setLimiteX(screenSize.x)
		objeto.position = Vector2(-25, (randi() % int(screenSize.y)))
		
	else:
		objeto.setLimiteX(0)
		objeto.position = Vector2(screenSize.x, (randi() % int(screenSize.y)))
	
	objeto.cambiarTextura()
	add_child(objeto)


func _on_Timer_timeout():
	spawnObject()
	
