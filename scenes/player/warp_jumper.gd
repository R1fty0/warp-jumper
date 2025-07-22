extends Node
class_name WarpJumper

signal finish_warp(new_pos: Vector3)

@export_category("Warp")
@export var warp_distance: float = 10.0

@export_category("Fuel")
@export var max_fuel: float = 100
@export var warp_fuel_cost: float = 33
@export var fuel_recharge_rate: float = 11

@export_category("Fuel Thresholds")
@export var safe_threshold: float = 80
@export var danger_threshold: float = 40
@export var lethal_threshold: float = 20

var current_warp_fuel: float = 0.0

func _ready() -> void:
	current_warp_fuel = max_fuel

func warp(movement_direction: Vector3, player_pos: Vector3) -> void:
	var warp_end_pos = player_pos + movement_direction.normalized() * warp_distance
	emit_signal("finish_warp", warp_end_pos)
