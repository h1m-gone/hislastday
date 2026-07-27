extends Label
@export var speed: float=2.0
var a = 0
var tv=0
var ab=false
var g=false
func _ready() -> void:
	await get_tree().create_timer(10).timeout
	effect("hey")
	await get_tree().create_timer(3).timeout
	effect("welcome to my house")
	await get_tree().create_timer(3).timeout
	effect("click on something, 
	it might do something")
	await get_tree().create_timer(3).timeout
	effect("also")
	await get_tree().create_timer(3).timeout
	effect("once i run out of
	energy")
	await get_tree().create_timer(3).timeout
	effect("i might end today")

func _physics_process(delta: float) -> void:
	if $"CharacterBody2D/Eng1".visible==false&& not ab && not g:
		effect("woah, I'm out of energy ")
		await get_tree().create_timer(3).timeout
		effect("time to end it then")
		await get_tree().create_timer(3).timeout
		$ColorRect.visible=true
		$ColorRect2.visible=true
		g=true
func effect(new_text: String) -> void:
	text = new_text
	visible_characters=0
	var tween=create_tween()
	var total_chars = get_total_character_count()
	tween.tween_property(self,"visible_characters",total_chars,speed)


func _on_phone_btn_pressed() -> void:
	ab=true
	effect("should i call someone....")
	$yes.visible=true
	$no.visible=true
	await get_tree().create_timer(7).timeout
	if a==1 and tv !=2:
		effect("i'll call my friend then")
		a=0
		await get_tree().create_timer(2).timeout
		$FreesoundCommunityCellphoneRinging40837.play()
	elif a==-1:
		effect("bruh")
		await get_tree().create_timer(3).timeout
		effect("click something else")
		ab=false
		a=0

func _on_yes_pressed() -> void:
	a=1


func _on_no_pressed() -> void:
	a=-1


func _on_freesound_community_cellphone_ringing_40837_finished() -> void:
	if tv==1:
		add_theme_color_override("font_color", Color.REBECCA_PURPLE)
		effect("hello, this is her")
		await get_tree().create_timer(3).timeout
		add_theme_color_override("font_color", Color.BLACK)
		effect("woah, your still ok, 
		i guess this is it huh")
		await get_tree().create_timer(3).timeout
		add_theme_color_override("font_color", Color.REBECCA_PURPLE)
		effect("yeah, it dosent look like
		the sun will stop anytime soon")
		await get_tree().create_timer(3).timeout
		add_theme_color_override("font_color", Color.BLACK)
		effect("yeah, i wanted to tell you that i")
		await get_tree().create_timer(3).timeout
		$FreesoundCommunityShaoIsabelle20142015Hangup104402.play()
		add_theme_color_override("font_color", Color.GRAY)
		effect("-----------------------------------")
		await get_tree().create_timer(5).timeout
		add_theme_color_override("font_color", Color.BLACK)
		effect("looks like she hung up..")
		await get_tree().create_timer(3).timeout
		add_theme_color_override("font_color", Color.BLACK)
		effect("click something else")
		tv=2
		await get_tree().create_timer(3).timeout
		ab=false
	else:
		add_theme_color_override("font_color", Color.REBECCA_PURPLE)
		effect("hello, this is her")
		await get_tree().create_timer(3).timeout
		add_theme_color_override("font_color", Color.BLACK)
		effect("woah, your still ok, 
		have you seen the TV?")
		await get_tree().create_timer(3).timeout
		add_theme_color_override("font_color", Color.REBECCA_PURPLE)
		effect("yeah, its not looking good,
		I'm running out of supplies too")
		await get_tree().create_timer(3).timeout
		add_theme_color_override("font_color", Color.BLACK)
		effect("i already ran out, a week ago,
		i just called to say")
		await get_tree().create_timer(3).timeout
		$FreesoundCommunityShaoIsabelle20142015Hangup104402.play()
		add_theme_color_override("font_color", Color.GRAY)
		effect("-----------------------------------")
		await get_tree().create_timer(5).timeout
		add_theme_color_override("font_color", Color.BLACK)
		effect("looks like she hung up..")
		await get_tree().create_timer(3).timeout
		add_theme_color_override("font_color", Color.BLACK)
		effect("click something else")
		await get_tree().create_timer(3).timeout
		ab=false
func _on_tv_btn_pressed() -> void:
	effect("a tv,
	did you want to hear the news")
	$yes.visible=true
	$no.visible=true
	await get_tree().create_timer(4.5).timeout
	if a==1:
		add_theme_color_override("font_color", Color.RED)
		$AnimatedSprite2D.visible=true
		effect("BREAKING NEWS: THE WORLD
		 ENDS, SUN BURNS EVERYTHING 
		,& SOCIETY IS GONE")
		await get_tree().create_timer(4).timeout
		add_theme_color_override("font_color", Color.BLACK)
		effect("wow, thats crazy
		good thing Im inside")
		await get_tree().create_timer(4).timeout
		effect("click something else")
		tv=1
		a=0
	elif a==-1:
		effect("bruh")
		await get_tree().create_timer(3).timeout
		effect("click something else")
		a=0


func _on_door_btn_pressed() -> void:
	ab=true
	if tv==1:
		effect("should i try to see the sun
		through the peephole?")
		$yes.visible=true
		$no.visible=true
		await get_tree().create_timer(4.5).timeout
		if a==1 and tv !=2:
			effect("I WANT TO SEE")
			$VoiceboschSizzlingFryingPan201293.play()
			a=0
			await get_tree().create_timer(2).timeout
			$Dark.visible=true
			$VoiceboschSizzlingFryingPan201293.stop()
			await get_tree().create_timer(3).timeout
			effect("click something else")
			tv==2
			await get_tree().create_timer(3).timeout
			ab=false

		elif a==-1:
			effect("bruh")
			await get_tree().create_timer(3).timeout
			effect("click something else")
			a=0
			ab=false
	else:
		effect("should i try to open the door?")
		$yes.visible=true
		$no.visible=true
		await get_tree().create_timer(4.5).timeout
		if a==1:
			$VoiceboschSizzlingFryingPan201293.play()
			effect("woahhh")
			a=0
			await get_tree().create_timer(2).timeout
			$VoiceboschSizzlingFryingPan201293.stop()
			effect("it burned my hand,
			guess im not going outside")
			await get_tree().create_timer(3).timeout
			effect("click something else")
			await get_tree().create_timer(3).timeout
			ab=false
		elif a==-1:
			effect("bruh")
			await get_tree().create_timer(3).timeout
			effect("click something else")
			a=0
			ab=false


func _on_couch_btn_pressed() -> void:
	ab=true
	if tv==1:
		effect("should i chill out, the tv
		is making nice static")
		$yes.visible=true
		$no.visible=true
		await get_tree().create_timer(4.5).timeout
		if a==1:
			effect("and so he sat")
			a=0
			$YourugorTvStaticNoise291374.play()
		elif a==-1:
			effect("bruh")
			await get_tree().create_timer(3).timeout
			effect("click something else")
			a=0
			ab=false
	else:
		effect("should i chill out")
		$yes.visible=true
		$no.visible=true
		await get_tree().create_timer(4.5).timeout
		if a==1:
			effect("nahh, not on my last day")
			a=0
			await get_tree().create_timer(3).timeout
			effect("click something else")
			await get_tree().create_timer(3).timeout
			ab=false
		elif a==-1:
			effect("bruh")
			await get_tree().create_timer(3).timeout
			effect("click something else")
			a=0
			ab=false


func _on_yourugor_tv_static_noise_291374_finished() -> void:
	$ColorRect.visible=true
	await get_tree().create_timer(2).timeout
	$ColorRect2.visible=true
	$"ColorRect2/Label".text="Guess he fell asleep on
	his last day, and never woke up"


func _on_drawer_btn_pressed() -> void:
	if $CharacterBody2D/Eng1.visible==true and $CharacterBody2D/Eng2.visible==false and $CharacterBody2D/Eng3.visible==false:
		effect("hey, i havent opened this drawer 
		since that one day")
		await get_tree().create_timer(3).timeout
		effect("its a gun")
		await get_tree().create_timer(3).timeout
		effect("ok, i guess im tired enough")
		await get_tree().create_timer(3).timeout
		$Gun.play()
		$ColorRect.visible=true


func _on_gun_finished() -> void:
		$ColorRect2.visible=true
		$"ColorRect2/Label".text="he was tired of waiting"
		await get_tree().create_timer(3).timeout
		$"ColorRect2/Label".text="so he decided to end it
		rather than wait till he was tired"
