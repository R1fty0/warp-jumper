extends ProgressBar

## Color when warping doesn't do any damage
@export var safe_color: Color = Color.WHITE
## Color when warping does light damage
@export var danger_color: Color = Color.YELLOW
## Color when warping does heavy damage 
@export var lethal_color: Color = Color.RED


func _process(delta: float) -> void:
	pass 
