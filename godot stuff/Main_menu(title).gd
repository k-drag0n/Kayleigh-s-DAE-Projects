
extends Control



func _on_play_button_button_down():
	get_tree().change_scene_to_file("res://RylieLevel1.tscn")


func _on_exit_button_down():
	get_tree().quit()
