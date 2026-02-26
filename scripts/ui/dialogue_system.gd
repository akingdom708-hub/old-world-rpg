# Dialogue and Text System Script

extends Node

var dialogue = {}
var dialogueTree = {}  # A dictionary to hold the dialogue options

func _ready():
    # Initialize the dialogue system here
    pass

func start_dialogue(node_name):
    if dialogueTree.has(node_name):
        var dialogue_node = dialogueTree[node_name]
        show_dialogue(dialogue_node)

func show_dialogue(dialogue_node):
    # Display the dialogue from the given node
    var text = dialogue_node.get("text", "")
    # Code to display the text in the UI would go here
    pass

func choose_option(option_index):
    # Function to choose a dialogue option
    if option_index >= 0 and option_index < dialogue_node.get("options", []).size():
        var next_node = dialogue_node.options[option_index]
        start_dialogue(next_node)  # Continue the dialogue

# Sample dialogue structure
# dialogueTree = {
#     "start": {"text": "Hello, traveler!", "options": ["option1", "option2"]},
#     "option1": {"text": "I am looking for adventure!", "options": []},
#     "option2": {"text": "Just passing through.", "options": []}
# }