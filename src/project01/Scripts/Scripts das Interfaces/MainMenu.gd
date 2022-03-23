extends Control

onready var Intro = $VideoPlayer

onready var musica = $AudioStreamPlayer

func _ready():
	pass

func _on_Button3_pressed():
	get_tree().quit() #Sai do jogo


func _on_Start_pressed():
	get_tree().change_scene("res://Cenas/Interface do Usuário/EscolhaPoder.tscn") #Começa o Jogo

func _on_VideoPlayer_finished():
	Intro.queue_free()
	musica.playing = true
