extends Control

var linhas: int = 0

@onready var altura: LineEdit = $Altura
@onready var triangle: Label = $Triangle


func _on_altura_text_submitted(new_text: String) -> void:
	linhas = int(new_text)
	var result: String = ""
	for value in range(1, linhas +1):
		result += str("*").repeat(value) + "\n"
	triangle.text = result
