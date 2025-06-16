extends Control

@onready var vbox: VBoxContainer = $VBoxContainer


func _ready() -> void:
	for child in vbox.get_children():
		if child is Label:
			print(child.text)
