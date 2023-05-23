extends CharacterBody2D

@export var speed = 100
var Health = 10
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_parent().set_progress(get_parent().get_progress() + speed * delta)
	if get_parent().get_progress_ratio() == 1:
		queue_free()
		
	if Health <= 0:
		get_parent().get_parent().queue_free()
		
	if global_position.x >= 1280:
		get_tree().change_scene_to_file("res://Scenes/failure_scene.tscn")

