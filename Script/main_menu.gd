extends Control

func _ready() -> void:
	$BgMusic.play()  

func _on_start_pressed() -> void:
	$Click.play()
	$BgMusic.stop()  
	await get_tree().create_timer(0.2).timeout
	get_tree().change_scene_to_file("res://Scene/main.tscn")

func _on_exit_pressed() -> void:
	$Click.play()
	await get_tree().create_timer(0.2).timeout
	get_tree().quit()

func _on_start_mouse_entered() -> void:
	$Hover.play()

func _on_exit_mouse_entered() -> void:
	$Hover.play()
