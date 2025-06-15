extends Control

var hp = 100
var hp_enemy = 80
var turno: TurnoEnum = TurnoEnum.PLAYER

enum TurnoEnum{
	PLAYER,
	INIMIGO	
}

@onready var vida: Label = $Vida
@onready var vida_inimigo: Label = $VidaInimigo
@onready var log: Label = $LOG
@onready var button: Button = $Button


func _ready() -> void:
	vida.text = "HP Player: %d" %[hp]
	vida_inimigo.text = "HP Enemy: %d" %[hp_enemy]


func _on_button_pressed() -> void:
	button.disabled = true
	turno = randi_range(0,1) as TurnoEnum
	
	while hp > 0 and hp_enemy > 0:
		var turno_formatado: String = str(TurnoEnum.find_key(turno))
		turno_formatado = turno_formatado.to_pascal_case()
		log.text =  turno_formatado + " começa"
		await get_tree().create_timer(1).timeout
		
		var damage: int = 0
		if turno == TurnoEnum.PLAYER:
			damage = randi_range(10,15)
			hp_enemy -= damage
			vida_inimigo.text = "HP Enemy: %d" %[hp_enemy]
			log.text = "player dealt %d damage to enemy" %[damage]
			turno = TurnoEnum.INIMIGO 
			
		else:
			damage = randi_range(8,12)
			hp -= damage
			vida.text = "HP Player: %d" %[hp]
			log.text = "enemy dealt %d damage to player" %[damage]
			turno = TurnoEnum.PLAYER 
		await get_tree().create_timer(1).timeout
		
	if hp > 0:
		log.text = "PLAYER WINS"
	else:
		log.text = "YOU LOSE"
	button.disabled = false
