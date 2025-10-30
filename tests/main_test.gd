extends Control

@onready var type_writer_label: TypeWriterLabel = $TypeWriterLabel

func _on_type_writer_label_typewriting_done() -> void:
	type_writer_label.typewrite("This text starts right after the previous one.")

func _unhandled_key_input(event: InputEvent) -> void:
	if event.is_action_pressed("test_interrupt") && type_writer_label.is_typing():
		type_writer_label.typewrite("You just skipped the previous text.")
