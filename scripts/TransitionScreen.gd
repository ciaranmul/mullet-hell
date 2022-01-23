extends CanvasLayer

signal can_transition

func transition():
    print("playing animation")
    $AnimationPlayer.play("fade_to_black")

func _on_AnimationPlayer_animation_finished(anim_name):
    if anim_name == "fade_to_black":
        emit_signal("can_transition")
        $AnimationPlayer.play("fade_to_normal")
    if anim_name == "fade_to_normal":
        pass
