extends Control

var aceito: bool = false

var num: int = 0

@onready var line_edit: LineEdit = $LineEdit
@onready var label_2: Label = $Label2

func _ready() -> void:
	while not aceito:
		await get_tree().create_timer(0.5).timeout
		if num < 1:
			label_2.text = "Muito baixo"
		if num > 100:
			label_2.text = "Muito alto"
	label_2.text = "Acertô mizeravi"

func _on_line_edit_text_submitted(new_text: String) -> void:
	num = int(new_text)
	if num > 0 and num < 101:
		aceito = true
