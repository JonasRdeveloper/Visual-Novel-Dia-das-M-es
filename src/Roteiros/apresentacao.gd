extends Node

@export_file('*.dtl') var linha_do_tempo
@onready var titulo := get_node("Controle_de_apresentacao/Titulo") as RichTextLabel
@onready var fundo_fim := get_node("Controle_de_apresentacao/fundo_fim") as ColorRect


func _ready():
	Dialogic.start(linha_do_tempo)
	Dialogic.signal_event.connect(_ligar_titulo_do_jogo)
	Dialogic.signal_event.connect(_ligar_fim_da_apresentacao)
	
func _ligar_titulo_do_jogo(titulo_jogo: String) -> void:
	if titulo_jogo == 'Aparecer':
		while titulo.visible_ratio < 1:
			await get_tree().create_timer(0.05).timeout
			titulo.visible_characters += 1
	
func _ligar_fim_da_apresentacao(fim: String) -> void:
	if fim == 'final':
		%Particulas_de_coracao.set_emitting(true)
		%Anim_creditos.play("Fim")
