extends Node2D
var a = true
var b =true
var c=true
var d =true
func _physics_process(delta: float) -> void:
	$textfrbox/AnimatedSprite2D.play("default")
	if a:
		await get_tree().create_timer(4).timeout
		$Room.visible = true
		a=false
	if b:
		await get_tree().create_timer(5).timeout
		$him.visible = true
		$textbox.visible =true
		b=false
	if c:
		await get_tree().create_timer(4).timeout
		$"him/Sadeyee".visible=false
		$"him/Eye".visible=true
		c=false
	if d:
		await get_tree().create_timer(8).timeout
		$textfrbox/CharacterBody2D.visible=true
		$"him/Sadeyee".visible=true
		$"him/Eye".visible=false
		d=false
func drawer() -> void:
	print("drawer")

func couch() -> void:
	print("couch")

func door() -> void:
	print("door")

func tv() -> void:
	print("tv")


func _on_phone_btn_mouse_entered() -> void:
	$"him/Sadeyee".visible=false
	$"him/Eye".visible=true

func _on_drawer_btn_mouse_entered() -> void:
	$"him/Sadeyee".visible=false
	$"him/Eye".visible=true

func _on_couch_btn_mouse_entered() -> void:
	$"him/Sadeyee".visible=false
	$"him/Eye".visible=true

func _on_door_btn_mouse_entered() -> void:
	$"him/Sadeyee".visible=false
	$"him/Eye".visible=true

func _on_tv_btn_mouse_entered() -> void:
	$"him/Sadeyee".visible=false
	$"him/Eye".visible=true

func _on_phone_btn_mouse_exited() -> void:
	$"him/Sadeyee".visible=true
	$"him/Eye".visible=false

func _on_drawer_btn_mouse_exited() -> void:
	$"him/Sadeyee".visible=true
	$"him/Eye".visible=false

func _on_couch_btn_mouse_exited() -> void:
	$"him/Sadeyee".visible=true
	$"him/Eye".visible=false

func _on_door_btn_mouse_exited() -> void:
	$"him/Sadeyee".visible=true
	$"him/Eye".visible=false

func _on_tv_btn_mouse_exited() -> void:
	$"him/Sadeyee".visible=true
	$"him/Eye".visible=false


func _on_yes_pressed() -> void:
	$textfrbox/yes.visible=false
	$textfrbox/no.visible=false
	if $"textfrbox/CharacterBody2D/Eng3".visible ==true:
		$"textfrbox/CharacterBody2D/Eng2".visible =true
		$"textfrbox/CharacterBody2D/Eng3".visible=false
	elif $"textfrbox/CharacterBody2D/Eng2".visible ==true:
		$"textfrbox/CharacterBody2D/Eng1".visible =true
		$"textfrbox/CharacterBody2D/Eng2".visible=false
	elif $"textfrbox/CharacterBody2D/Eng1".visible ==true:
		$"textfrbox/CharacterBody2D/Eng1".visible =false
func _on_no_pressed() -> void:
	$textfrbox/yes.visible=false
	$textfrbox/no.visible=false
