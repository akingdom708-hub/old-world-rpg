# World State and Flags Manager Script

extends Node

var flags = {}  # Dictionary to hold flags

# Method to set a flag
func set_flag(flag_name: String, value: bool) -> void:
    flags[flag_name] = value

# Method to get a flag
func get_flag(flag_name: String) -> bool:
    return flags.get(flag_name, false)  # Returns false if the flag does not exist

# Method to reset a flag
func reset_flag(flag_name: String) -> void:
    if flag_name in flags:
        flags.erase(flag_name)

# Method to check if a flag exists
func flag_exists(flag_name: String) -> bool:
    return flag_name in flags

# Method to clear all flags
func clear_flags() -> void:
    flags.clear()