extends  Area2D

@export var next_level = ""


func _on_body_entered(_body: Node2D) -> void:
	call_deferred("load_next_cena")

func load_next_cena():
	get_tree().change_scene_to_file("res://cena/" + next_level + ".tscn")
