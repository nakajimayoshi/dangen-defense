extends Node2D

func _on_try_again_pressed():
	get_tree().change_scene_to_file("res://Main.tscn")



func _on_quit_button_pressed():
	get_tree().quit()


func _on_main_menu_pressed():
	get_tree().change_scene_to_file("res://Scenes/menu.tscn")
