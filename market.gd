extends Node

@export var devices: Dictionary = {
    "laptop": {
        "price": 50,
        "faults": ["screen", "battery", "motherboard"],
        "resale_value": 30
    },
    "game_console": {
        "price": 60,
        "faults": ["power_supply", "controller", "screen"],
        "resale_value": 40
    },
    "amplifier": {
        "price": 40,
        "faults": ["power_amp", "crossover", "speaker"],
        "resale_value": 25
    }
}

func generate_offer() -> Dictionary:
    var random_device = devices.keys().random()
    return devices[random_device].dup()

func calculate_resale_value(device_type: String, repair_state: Dictionary) -> int:
    var base_value = devices[device_type]["resale_value"]
    
    # Adjust based on repair state
    if repair_state.has("screen_replaced"):
        base_value += 5
    if repair_state.has("battery_replaced"):
        base_value += 5
    if repair_state.has("motherboard_replaced"):
        base_value += 5
    
    return base_value

# For testing
func _ready():
    var offer = generate_offer()
    print("Generated offer:", offer)