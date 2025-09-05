extends Control

func _on_button_pressed() -> void:
	$MusicPlayer.play()


func _on_CheckButton_toggled(pressed: bool) -> void:
	if pressed:
		if not $AudioStreamPlayer.playing:
			$AudioStreamPlayer.play()  
		else:
			$AudioStreamPlayer.stop()
