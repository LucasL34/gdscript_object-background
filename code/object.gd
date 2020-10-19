extends Area2D

var degrees = 0
var limiteX
var direction # true +, fase -

func _process(delta):
	rotation()
	#<>
	
	if(limiteX == 0):
		position.x-=1.5
		position.y-=0.2
		if(position.x<(limiteX)-40):
			queue_free()
	
	else:
		position.x+=1.5
		position.y+=0.2
		if(position.x>limiteX):
			queue_free()

func rotation():
	$AnimatedSprite.set_rotation_degrees(degrees)
	degrees+=1.5

func setLimiteX(X):
	limiteX = X

func setDirection(dir):
	direction = dir

func cambiarTextura():
	var rand = randi()%3+0
	$AnimatedSprite.play(str(rand))
