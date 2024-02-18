extends CollisionShape2D

@onready var interaction_area = $InteractionArea

# Called when the node enters the scene tree for the first time.
func _ready():
	interaction_area.interact = Callable(self, "_test")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _test():
	$PopupQuiz.show()
	print("here cpu")
	
