extends Area2D

@export var inside_camera: Camera2D
@export var outside_camera: Camera2D


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		body.set_position($Destinationpoint.global_position)
		inside_camera.enabled = false
		outside_camera.enabled = true
