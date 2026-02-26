extends Node

# This script handles NPC behavior and scheduling.

var schedule = []
var current_time

# Load the NPC schedule
func _ready():
    current_time = OS.get_datetime().hours + OS.get_datetime().minutes / 60
    load_schedule()
    update_npc_behavior()

# Load the scheduled events for the NPC
func load_schedule():
    schedule = [
        { "time": 9, "action": "greet_player" },
        { "time": 12, "action": "rest" },
        { "time": 14, "action": "trade" },
        { "time": 18, "action": "greet_player" },
        { "time": 21, "action": "return_home" }
    ]

# Update the NPC behavior based on the time
func update_npc_behavior():
    for event in schedule:
        if current_time >= event.time:
            match event.action:
                "greet_player":
                    greet_player()
                "rest":
                    rest()
                "trade":
                    trade()
                "return_home":
                    return_home()

# Sample NPC actions
func greet_player():
    print("NPC: Hello, traveler!")

func rest():
    print("NPC: Taking a break...")

func trade():
    print("NPC: Let's trade!")

func return_home():
    print("NPC: Time to head home...")
