extends Node

signal set_scanline_shader(isOn)

var scanlines_enabled = true

func set_scanlines_enabled(isOn):
    scanlines_enabled = isOn
    ShaderManager.emit_signal("set_scanline_shader", scanlines_enabled)
