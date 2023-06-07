extends Sprite

var pos_inicial
export var pos_final = 500
var subir = true
export var vel = 1
var pre_cacos = preload("res://scenes/cacos.tscn" )

func _ready():
	pos_inicial = position.y #877-500 = 377
	pass




func _process(delta):
	if position.y < pos_inicial - pos_final:
		subir = false
	
	
	if subir:
			 position.y -= vel
	else:
		 position.y += vel * .5

func _on_Button_button_down():
	$"../".score += 10 # ou get_parent().score += 10
	$"../audio".play()
	Cacos()
	queue_free()


func Cacos():
	var c = pre_cacos.instance()
	c.position = position
	get_parent().add_child(c)
	
	
