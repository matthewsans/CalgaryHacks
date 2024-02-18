extends Window

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_false_1_pressed():
	$Incorrect.show()
	$Q1.hide()
	#$Incorrect.hide()
	$Q2.show()
	pass # Replace with function body.

func _on_true_1_pressed():
	$Correct.show()
	$Q1.hide()
	#$Correct.hide()
	$Q2.show()
	pass # Replace with function body.
	
func _on_false_2_pressed():
	$Correct.show()
	$Q2.hide()
	#$Correct.hide()
	$Q3.show()
	pass # Replace with function body.
	

func _on_true_2_pressed():
	$Incorrect.show()
	$Q2.hide()
	#$Incorrect.hide()
	$Q3.show()
	pass # Replace with function body.


func _on_false_3_pressed():
	$Correct.show()
	$Q3.hide()
	#$Correct.hide()
	$Q4.show()
	pass # Replace with function body.


func _on_true_3_pressed():
	$Incorrect.show()
	$Q3.hide()
	#$Incorrect.hide()
	$Q4.show()
	pass # Replace with function body.


func _on_false_4_pressed():
	$Correct.show()
	$Q4.hide()
	$".".hide()
	#$Correct.hide()
	pass # Replace with function body.

func _on_true_4_pressed():
	$Incorrect.show()
	$Q4.hide()
	$".".hide()
	#$Correct.hide()
	pass # Replace with function body.


func _on_close_requested():
	$".".hide() # Replace with function body.
