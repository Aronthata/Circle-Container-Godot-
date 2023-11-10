@tool
extends Container
class_name CircleContainer
@export var Radius : int = abs(size.x -size.y):
	set(value):
		Radius = value
		hello()
func _notification(what):
	if what == NOTIFICATION_SORT_CHILDREN:
		hello()
func hello():
		var angle_diff := TAU / get_child_count()
		var a = 0
		if get_children():
			for child in get_children():
				a += 1
				fit_child_in_rect(child, Rect2((((Vector2.from_angle(angle_diff * a)*Radius)-child.size/2)) + (size/2), child.size))
		else:
			update_configuration_warnings()
func _get_configuration_warnings():
	if !get_children():
		return ["this Node requires child nodes in order to function properly"]
	else:
		return []
