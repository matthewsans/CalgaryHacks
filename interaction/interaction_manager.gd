extends Node2D

@onready var mainchar = get_tree().get_first_node_in_group("MainChar")
@onready var label = $Label

var active_areas = []
var can_interact = true

func register_area(area: InteractionArea):
	active_areas.push_back(area)

func unregister_area(area: InteractionArea):
	var index = active_areas.find(area)
	if(index !=-1):
		active_areas.remove_at(index)
		

func _process(delta):
	if(active_areas.size() >0 && can_interact):
		active_areas.sort_custom(_sort_by_dist_to_mainchar)
		label.text = active_areas[0].action_name
		label.global_position = active_areas[0].global_position
		label.global_position.y -= 36
		label.global_position.x -- label.size.x/2
		label.show()
	else:
		label.hide()

func _sort_by_dist_to_mainchar(area1, area2):
	var area1_to_mc = mainchar.global_position.distance_to(area1.global_position)
	var area2_to_mc = mainchar.global_position.distance_to(area2.global_position)
	return area1_to_mc<area2_to_mc
	
func _input(event):
	if (event.is_action_pressed("ui_accept") and active_areas.size()>0):
		can_interact = true
		label.hide()
			
		await active_areas[0].interact.call()
			
		can_interact = false
