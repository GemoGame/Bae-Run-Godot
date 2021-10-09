extends Control

export var score = 0

func _ready():
	$BaeLoad.value = 50

func _process(delta):
	if $BaeLoad.value >= 100:
		$BaeLoad.value = 50
		score += 1
		if score % 5 == 0:
			$Ojou.play()
		else:
			$Yatta.play()
	$Score.text = str(score)


func _on_Timer_timeout():
	$BaeLoad.value += 5.5
	
