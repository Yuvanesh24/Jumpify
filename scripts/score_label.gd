extends Label

var score_text = "" # text

func _ready() -> void:
  score_text = tr(text)
  _update_text(0)

  SignalBus.score_updated.connect(_on_enemy_squashed.bind())

func _on_enemy_squashed(score: int) -> void:
  _update_text(score)

func _update_text(score: int) -> void:
  text = score_text % score
