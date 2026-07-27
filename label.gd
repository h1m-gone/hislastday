extends Label
@export var speed: float=2.0

func _ready() -> void:
	effect("It was a day like any other....................")
	await get_tree().create_timer(4.5).timeout
	effect("This is his house")
	await get_tree().create_timer(3).timeout
	effect("This is him")
	await get_tree().create_timer(3).timeout
	visible=false
func effect(new_text: String) -> void:
	text = new_text
	visible_characters=0
	var tween=create_tween()
	var total_chars = get_total_character_count()
	tween.tween_property(self,"visible_characters",total_chars,speed)
