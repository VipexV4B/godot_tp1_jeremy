extends Control

func _on_button_pressed() -> void:
	$MusicPlayer.play();


func _on_CheckButton_toggled(toggled_on: bool):
	if toggled_on:
		$MusicPlayer.play();
	else:
		$MusicPlayer.stop();
