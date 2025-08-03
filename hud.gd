extends CanvasLayer

signal start_game

var high_score = 0
const SAVE_PATH = "user://highscore.save"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	load_high_score()
	update_high_score_display()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func show_message(text):
	$Message.text = text
	$Message.show()
	$MessageTimer.start()

func show_game_over():
	show_message("Game Over")
	await $MessageTimer.timeout

	$Message.text = "Dodge the Creeps!"
	$Message.show()

	await get_tree().create_timer(1.0).timeout
	$StartButton.show()
	
	# Check for new high score
	if $ScoreLabel.text.to_int() > high_score:
		high_score = $ScoreLabel.text.to_int()
		save_high_score()
	
	update_high_score_display()

func update_score(score):
	$ScoreLabel.text = str(score)

func update_high_score_display():
	$HighScoreLabel.text = "High Score: " + str(high_score)

func save_high_score():
	var file = FileAccess.open(SAVE_PATH, FileAccess.WRITE)
	file.store_var(high_score)
	file.close()

func load_high_score():
	if FileAccess.file_exists(SAVE_PATH):
		var file = FileAccess.open(SAVE_PATH, FileAccess.READ)
		high_score = file.get_var()
		file.close()

func _on_start_button_pressed():
	$StartButton.hide()
	start_game.emit()

func _on_message_timer_timeout():
	$Message.hide()
