extends CharacterBody2D
func _physics_process(delta: float) -> void:
	if $Break.visible==false:
		$Him.position.x=-584.0
		$Him.position.y=-352.0
	else:
		$Him.position.x=-556.0
		$Him.position.y=-222.0
