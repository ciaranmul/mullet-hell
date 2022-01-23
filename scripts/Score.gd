extends Label

# Called when the node enters the scene tree for the first time.
func _ready():
    text = "Score: %06d" % 0
    ScoreManager.connect("score_changed", self, "_on_ScoreManager_score_changed")

func _on_ScoreManager_score_changed(new_score):
    print("New Score: %s" % new_score) 
    text = "Score: %s" % new_score
