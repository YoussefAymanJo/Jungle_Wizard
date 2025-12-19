extends Node


var coins = 0 
var score = 0 
var time = 0
func playSoundFX(stream):
	$SoundEF.stream = stream
	$SoundEF.play()
func _process(delta: float) -> void:
	$"GUI/Coinsvalue".text = str(coins)
	$"GUI/Scorevalue".text = str(score)
