extends Control

var frases: Array[String] = []

@onready var label: Label = $Label
@onready var total: Label = $Total
@onready var longa: Label = $Longa
@onready var line_edit: LineEdit = $LineEdit


func _on_line_edit_text_submitted(new_text: String) -> void:
	if new_text == "sair":
		var count: int = frases.size()
		var maior_frase: int = 0
		var num_char: int = 0
		total.text = "total de frases foi: %d" %[count]
		
		while count > 0:
			if num_char < frases[count-1].length():
				num_char = frases[count-1].length()
				maior_frase = count
			count -= 1
		var string_maior_frase: String = frases[maior_frase-1]
		longa.text = "A frase mais longa é: %s" %[string_maior_frase]
		return
	line_edit.clear()
	frases.append(new_text)
	
