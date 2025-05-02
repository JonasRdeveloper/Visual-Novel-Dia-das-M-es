extends TextureButton

@onready var som_do_botao := get_node("../../Node_2D/Som_do_botao") as AudioStreamPlayer2D

const HOMENAGEM: String = "res://src/Cenas/Apresentacao.tscn"

func _on_pressed():
	som_do_botao.play()
	await som_do_botao.finished
	SceneLoader.load_scene(HOMENAGEM)
