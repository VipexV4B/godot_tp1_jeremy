extends Control

func _on_Button_pressed():
	$MusicPlayer.play()
	
func _on_CheckButton_toggle():
	$MusicPlayer.play()
