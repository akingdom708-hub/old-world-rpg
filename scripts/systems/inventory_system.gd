# Inventory Management Script

extends Node

# Store inventory items
var inventory = {}

# Add item to inventory
func add_item(item_name: String, quantity: int) -> void:
    if inventory.has(item_name):
        inventory[item_name] += quantity
    else:
        inventory[item_name] = quantity
    print("Added " + str(quantity) + " of " + item_name)

# Remove item from inventory
func remove_item(item_name: String, quantity: int) -> void:
    if inventory.has(item_name) and inventory[item_name] >= quantity:
        inventory[item_name] -= quantity
        print("Removed " + str(quantity) + " of " + item_name)
    else:
        print("Not enough of " + item_name + " to remove")

# Get current inventory status
func get_inventory() -> Dictionary:
    return inventory
