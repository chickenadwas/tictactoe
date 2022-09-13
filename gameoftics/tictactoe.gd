extends Node2D


var o = false
var x = true


func _on_square1_pressed():

	if x == true:
		get_node("x1"). visible = true
		x = false
		o = true
		get_node("square1").disabled = true
	else:
		get_node("circle1").visible = true
		x = true
		o = false
		get_node("square1").disabled = true

		
		

	print(o)
	print(x)

func _on_square2_pressed():
	if x == true:
		get_node("x2"). visible = true
		x = false
		o = true
		get_node("square2").disabled = true
	else:
		get_node("circle2").visible = true
		x = true
		o = false
		get_node("square2").disabled = true
	print(o)
	print(x)

func _on_square3_pressed():
	if x == true:
		get_node("x3"). visible = true
		x = false
		o = true
		get_node("square3").disabled = true
	else:
		get_node("circle3").visible = true
		x = true
		o = false
		get_node("square3").disabled = true
	print(o)
	print(x)

func _on_square4_pressed():
	if x == true:
		get_node("x4"). visible = true
		x = false
		o = true
		get_node("square4").disabled = true
	else:
		get_node("circle4").visible = true
		x = true
		o = false
		get_node("square4").disabled = true
	print(o)
	print(x)
func _on_square5_pressed():
	if x == true:
		get_node("x5"). visible = true
		x = false
		o = true
		get_node("square5").disabled = true
	else:
		get_node("circle5").visible = true
		x = true
		o = false
		get_node("square5").disabled = true
	print(o)
	print(x)

func _on_square6_pressed():
	if x == true:
		get_node("x6"). visible = true
		x = false
		o = true
		get_node("square6").disabled = true
	else:
		get_node("circle6").visible = true
		x = true
		o = false
		get_node("square6").disabled = true
	print(o)
	print(x)
func _on_square7_pressed():
	if x == true:
		get_node("x7"). visible = true
		x = false
		o = true
		get_node("square7").disabled = true
	else:
		get_node("circle7").visible = true
		x = true
		o = false
		get_node("square7").disabled = true
	print(o)
	print(x)
func _on_square8_pressed():
	if x == true:
		get_node("x8"). visible = true
		x = false
		o = true
		get_node("square8").disabled = true
	else:
		get_node("circle8").visible = true
		x = true
		o = false
		get_node("square8").disabled = true


func _on_square9_pressed():
	if x == true:
		get_node("x9"). visible = true
		x = false
		o = true
		get_node("square9").disabled = true
	else:
		get_node("circle9").visible = true
		x = true
		o = false
		get_node("square9").disabled = true
		print(x)
		print(o)
func _process(delta):
	if get_node("circle1").visible == true and get_node("circle2").visible == true and get_node("circle3").visible ==true or get_node("circle4").visible == true and get_node("circle5").visible == true and get_node("circle6").visible ==true or get_node("circle7").visible == true and get_node("circle8").visible == true and get_node("circle9").visible ==true:
		get_node("winner").text = str("PLR2 WINS!!!!!!")
		get_node("winner").visible = true
		get_node("restart").visible = true
		get_node("back to menu").visible = true
	if get_node("circle1").visible == true and get_node("circle4").visible == true and get_node("circle7").visible ==true or get_node("circle2").visible == true and get_node("circle5").visible == true and get_node("circle8").visible ==true or get_node("circle3").visible == true and get_node("circle6").visible == true and get_node("circle9").visible ==true:
		get_node("winner").text = str("PLR2 WINS!!!!!!")
		get_node("winner").visible = true
		get_node("restart").visible = true
		get_node("back to menu").visible = true
	if get_node("circle1").visible == true and get_node("circle5").visible == true and get_node("circle9").visible ==true or get_node("circle3").visible == true and get_node("circle5").visible == true and get_node("circle7").visible ==true:
		get_node("winner").text = str("PLR2 WINS!!!!!!")
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
		get_node("back to menu").visible = true
		get_node("restart").visible = true
	if get_node("square1").disabled == true and get_node("square1").disabled == true and get_node("square2").disabled == true and get_node("square3").disabled == true and get_node("square4").disabled == true and get_node("square5").disabled == true and get_node("square6").disabled == true and get_node("square7").disabled == true and get_node("square8").disabled == true and get_node("square9").disabled == true:
		if get_node("winner").visible == false:
			get_node("winner").text = str("TIE!!!!!!")
			get_node("winner").visible = true
			get_node("restart").visible = true
			get_node("back to menu").visible = true


func _on_Button_pressed():
	get_tree().change_scene("res://tictactoe.tscn")


func _on_back_to_menu_pressed():
	get_tree().change_scene("res://title.tscn")
