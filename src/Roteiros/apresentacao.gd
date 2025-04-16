extends Node

@export_file('*.dtl') var linha_do_tempo

func _ready():
	Dialogic.start(linha_do_tempo)
	
func _process(_delta):
	print_debug(Dialogic.VAR.informacao.to_lower())
	print_debug(Dialogic.VAR.Dia.to_lower())
