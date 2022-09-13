extends Node2D


var o = false
var x = true
var random_generator = RandomNumberGenerator.new()
var timer = 0


func _physics_process(delta):
	if o == true:
		if random_generator.randi_range(1,9) == 1:
			if get_node("x1").visible == true or get_node("circle1").visible == true:
				random_generator.randomize()
			if get_node("x1").visible == false and get_node("circle1").visible == false:
				get_node("circle1").visible = true
				x = true
				o = false
				print("1")
				get_node("square1").disabled = true
	if o == true:
		if random_generator.randi_range(1,9) == 2:
			if get_node("x2").visible == true or get_node("circle2").visible == true:
				random_generator.randomize()
			if get_node("x2").visible == false and get_node("circle2").visible == false:
				get_node("circle2").visible = true
				x = true
				o = false
				print("2")
				get_node("square2").disabled = true
	if o == true:
		if random_generator.randi_range(1,9) == 3:
			if get_node("x3").visible == true or get_node("circle3").visible == true:
				random_generator.randomize()
			if get_node("x3").visible == false and get_node("circle3").visible == false:
				get_node("circle3").visible = true
				x = true
				o = false
				print("3")
				get_node("square3").disabled = true
	if o == true:
		if random_generator.randi_range(1,9) == 4:
			if get_node("x4").visible == true or get_node("circle4").visible == true:
				random_generator.randomize()
			if get_node("x4").visible == false and get_node("circle4").visible == false:
				get_node("circle4").visible = true
				x = true
				o = false
				print("4")
				get_node("square4").disabled = true
	if o == true:
		if random_generator.randi_range(1,9) == 5:
			if get_node("x5").visible == true or get_node("circle5").visible == true:
				print("false")
				random_generator.randomize()
			if get_node("x5").visible == false and get_node("circle5").visible == false:
				print("true")
				get_node("circle5").visible = true
				x = true
				o = false
				print("5")
				get_node("square5").disabled = true
	if o == true:
		if random_generator.randi_range(1,9) == 6:
			if get_node("x6").visible == true or get_node("circle6").visible == true:
				random_generator.randomize()
			if get_node("x6").visible == false and get_node("circle6").visible == false:
				get_node("circle6").visible = true
				x = true
				o = false
				print("6")
				get_node("square6").disabled = true
	if o == true:
		if random_generator.randi_range(1,9) == 7:
			if get_node("x7").visible == true or get_node("circle7").visible == true:
				random_generator.randomize()
			if get_node("x7").visible == false and get_node("circle7").visible == false:
				get_node("circle7").visible = true
				x = true
				o = false
				print("7")
				get_node("square7").disabled = true
	if o == true:
		if random_generator.randi_range(1,9) == 8:
			if get_node("x8").visible == true or get_node("circle8").visible == true:
				random_generator.randomize()
			if get_node("x8").visible == false and get_node("circle8").visible == false:
				get_node("circle8").visible = true
				x = true
				o = false
				print("8")
				get_node("square8").disabled = true
	if o == true:
		if random_generator.randi_range(1,9) == 9:
			if get_node("x9").visible == true or get_node("circle9").visible == true:
				random_generator.randomize()
			if get_node("x9").visible == false and get_node("circle9").visible == false:
				get_node("circle9").visible = true
				x = true
				o = false
				print("9")
				get_node("square9").disabled = true
	if o == true:
		timer = timer + 1

func _on_square1_pressed():

	if x == true:
		timer = 0
		print(timer)
		get_node("x1"). visible = true
		x = false
		o = true
		random_generator.randomize()
		print(random_generator.randi_range(1,9))
		get_node("square1").disabled = true



func _on_square2_pressed():
	if x == true:
		timer = 0
		get_node("x2"). visible = true
		x = false
		o = true
		get_node("square2").disabled = true
		random_generator.randomize()


func _on_square3_pressed():
	if x == true:
		timer = 0
		get_node("x3"). visible = true
		x = false
		o = true
		get_node("square3").disabled = true
		random_generator.randomize()

func _on_square4_pressed():
	if x == true:
		timer = 0
		get_node("x4"). visible = true
		x = false
		o = true
		get_node("square4").disabled = true
		random_generator.randomize()

func _on_square5_pressed():
	if x == true:
		timer = 0
		get_node("x5"). visible = true
		x = false
		o = true
		get_node("square5").disabled = true
		random_generator.randomize()

func _on_square6_pressed():
	if x == true:
		timer = 0
		get_node("x6"). visible = true
		x = false
		o = true
		get_node("square6").disabled = true
		random_generator.randomize()
func _on_square7_pressed():
	if x == true:
		timer = 0
		get_node("x7"). visible = true
		x = false
		o = true
		get_node("square7").disabled = true
		random_generator.randomize()
func _on_square8_pressed():
	if x == true:
		timer = 0
		get_node("x8"). visible = true
		x = false
		o = true
		get_node("square8").disabled = true
		random_generator.randomize()


func _on_square9_pressed():
	if x == true:
		timer = 0
		get_node("x9"). visible = true
		x = false
		o = true
		get_node("square9").disabled = true
		random_generator.randomize()
		
func _process(delta):
	if get_node("circle1").visible == true and get_node("circle2").visible == true and get_node("circle3").visible ==true or get_node("circle4").visible == true and get_node("circle5").visible == true and get_node("circle6").visible ==true or get_node("circle7").visible == true and get_node("circle8").visible == true and get_node("circle9").visible ==true:
		get_node("winner").text = str("BOT WINS!!!!!!")
		get_node("winner").visible = true
		get_node("back to menu").visible = true
		get_node("restart").visible = true
	if get_node("circle1").visible == true and get_node("circle4").visible == true and get_node("circle7").visible ==true or get_node("circle2").visible == true and get_node("circle5").visible == true and get_node("circle8").visible ==true or get_node("circle3").visible == true and get_node("circle6").visible == true and get_node("circle9").visible ==true:
		get_node("winner").text = str("BOT WINS!!!!!!")
		get_node("winner").visible = true
		get_node("back to menu").visible = true
		get_node("restart").visible = true
	if get_node("circle1").visible == true and get_node("circle5").visible == true and get_node("circle9").visible ==true or get_node("circle3").visible == true and get_node("circle5").visible == true and get_node("circle7").visible ==true:
		get_node("winner").text = str("BOT WINS!!!!!!")
		get_node("winner").visible = true
		get_node("restart").visible = true
		get_node("back to menu").visible = true
	if get_node("x1").visible == true and get_node("x2").visible == true and get_node("x3").visible ==true or get_node("x4").visible == true and get_node("x5").visible == true and get_node("x6").visible ==true or get_node("x7").visible == true and get_node("x8").visible == true and get_node("x9").visible ==true:
		get_node("winner").text = str("PLR1 WINS!!!!!!")
		get_node("winner").visible = true
		get_node("restart").visible = true
		get_node("back to menu").visible = true
	if get_node("x1").visible == true and get_node("x4").visible == true and get_node("x7").visible ==true or get_node("x2").visible == true and get_node("x5").visible == true and get_node("x8").visible ==true or get_node("x3").visible == true and get_node("x6").visible == true and get_node("x9").visible ==true:
		get_node("winner").text = str("PLR1 WINS!!!!!!")
		get_node("winner").visible = true
		get_node("restart").visible = true
		get_node("back to menu").visible = true
	if get_node("x1").visible == true and get_node("x5").visible == true and get_node("x9").visible ==true or get_node("x3").visible == true and get_node("x5").visible == true and get_node("x7").visible ==true:
		get_node("winner").text = str("PLR1 WINS!!!!!!")
		get_node("winner").visible = true
		get_node("restart").visible = true
		get_node("back to menu").visible = true
	if get_node("square1").disabled == true and get_node("square1").disabled == true and get_node("square2").disabled == true and get_node("square3").disabled == true and get_node("square4").disabled == true and get_node("square5").disabled == true and get_node("square6").disabled == true and get_node("square7").disabled == true and get_node("square8").disabled == true and get_node("square9").disabled == true:
		if get_node("winner").visible == false:
			get_node("winner").text = str("TIE!!!!!!")
			get_node("winner").visible = true
			get_node("restart").visible = true
			get_node("back to menu").visible = true


func _on_restart_pressed():
	get_tree().change_scene("res://ai.tscn")


func _on_back_to_menu_pressed():
	get_tree().change_scene("res://title.tscn")
