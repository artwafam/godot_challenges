extends Control

#region console example
var number: int = 10
var array: Array = [1,2,3,4,5,6,7,8,9,10]
var dictionary: Dictionary = {
	"key1": "value1",
	"key2": "value2"
} 
#endregion

var num: int = 0

@onready var line_edit: LineEdit = $LineEdit
@onready var tabuada: Label = $Tabuada



func _ready() -> void:
	pass
	


func _on_line_edit_text_submitted(new_text: String) -> void:
	var number = int(new_text)
	var result = ""
	for i in range(1, 11):
		result += "%d x %d = %d\n" % [number, i, number * i]
	tabuada.text = result
