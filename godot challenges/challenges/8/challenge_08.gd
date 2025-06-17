extends Control

var frutas: Array = ["morango", "maçã", "banana", "manga", "uva", "abacaxi"]

var count: int = frutas.size()
var maior_que_5: int = 0
var num_char: int = 0

var result: String = ""

func _ready() -> void:
	for fruta: String in frutas:
		print(fruta)
		if fruta.length() > 5:
			maior_que_5+=1
	print(str(maior_que_5) + " itens com mais de 5 letras")
	
	
	
