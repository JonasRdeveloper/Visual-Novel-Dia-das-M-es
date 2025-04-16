extends Node

@export_file('*.dtl') var linha_do_tempo

func _ready():
	Dialogic.start(linha_do_tempo)
