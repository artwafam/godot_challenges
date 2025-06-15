extends Control

var index: int = 5

@onready var button: Button = $Button
@onready var label: Label = $Label


func _ready() -> void:
	pass

func _on_button_pressed() -> void:
	while index > 0:
		label.text = str(index)
		await get_tree().create_timer(1).timeout
		index -= 1
	label.text = "GO"
