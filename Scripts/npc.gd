extends CharacterBody2D

@export var main:CharacterBody2D

const speed = 20
var current_state = IDLE

var dir = Vector2.RIGHT
var start_pos

var is_roaming = false
var is_chatting = false

var player
var player_in_chat_zone = false

enum{
	IDLE
}

func _ready():
	randomize()
	start_pos = position
func _process(delta):
	if current_state == 0 or current_state == 1:
		$AnimatedSprite2D.play("idle")
	
	if main.position.x > position.x:
		self.get_node("AnimatedSprite2D").flip_h = false
	else:
		self.get_node("AnimatedSprite2D").flip_h = true
