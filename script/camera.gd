extends Camera2D

var target: Node2D

func _ready() -> void:
	get_target()
	
	
func _process(_delta: float) -> void:
#esse position vai copiar a posição do player
	position = target.position
 
#vai pegar o nó que está na nossa arvore como o player e etc... e criamos a função get_target
func get_target():
	var nodes = get_tree().get_nodes_in_group("Player")
	if nodes.size() == 0:
		push_error("Player não found ")
		return
		
	target = nodes[0]
