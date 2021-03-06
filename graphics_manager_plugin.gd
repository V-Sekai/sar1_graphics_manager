tool
extends EditorPlugin

var editor_interface = null


func _init() -> void:
	print("Initialising GraphicsManager plugin")

func _notification(p_notification: int):
	match p_notification:
		NOTIFICATION_PREDELETE:
			print("Destroying GraphicsManager plugin")


func get_name() -> String:
	return "GraphicsManager"


func _enter_tree() -> void:
	editor_interface = get_editor_interface()
	add_autoload_singleton("GraphicsManager", "res://addons/sar1_graphics_manager/graphics_manager.gd")


func _exit_tree() -> void:
	remove_autoload_singleton("GraphicsManager")
