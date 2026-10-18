extends Node

@export var cash: int = 0  # Player's available funds
@export var devices: Dictionary = {}  # "device_type": {"repair_state": { ... }, "original_price": int}

func add_device(device_type: String, repair_state: Dictionary, original_price: int):
    """
    Add a new device to the inventory
    - device_type: Type of device (laptop, game_console, amplifier)
    - repair_state: Dictionary indicating which faults are fixed
    - original_price: Price paid for the device
    """
    devices[device_type] = {
        "repair_state": repair_state.duplicate(),  # Make a copy to avoid reference issues
        "original_price": original_price
    }

func sell_device(device_type: String) -> int:
    """
    Sell a device and return the resale value
    - Returns: Resale value (or 0 if can't afford to lose cash)
    """
    if not devices.has(device_type):
        return 0

    var device = devices[device_type]
    var resale_value = Market.calculate_resale_value(device_type, device["repair_state"])

    # Prevent negative balances
    if cash - resale_value < 0:
        return 0

    cash += resale_value
    devices.erase(device_type)
    return resale_value