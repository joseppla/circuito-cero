extends Control

@export var market: Market
@export var inventory: Inventory
@export var cash_label: Label

func _ready():
    generate_market_ui()

func generate_market_ui():
    var container = VBoxContainer()
    container.size_flags = SizeFlags.EXPAND_BOTH
    add_child(container)

    # Clear existing offers
    container.clear()

    # Generate 3 random offers
    for _ in 0..2:
        var offer = market.generate_offer()
        add_device_entry(container, offer)

func add_device_entry(parent: Control, device: Dictionary):
    var entry = Control()
    entry.rect_min_size = Vector2(200, 100)
    entry.tooltip_text = "Price: " + str(device["price"]) + "€" + 
                         "\nFaults: " + device["faults"].join(", ")
    parent.add_child(entry)

    # Device name
    var name_label = Label()
    name_label.text = device["name"] if device.has("name") else "Unknown Device"
    name_label.bold = true
    name_label.size_flags = SizeFlags.EXPAND_FILL
    entry.add_child(name_label)

    # Price display
    var price_label = Label()
    price_label.text = "Price: " + str(device["price"]) + "€"
    price_label.size_flags = SizeFlags.EXPAND_FILL
    entry.add_child(price_label)

    # Fault indicator
    var fault_label = Label()
    fault_label.text = "Faults: " + device["faults"].join(", ")
    fault_label.style = "red"
    fault_label.size_flags = SizeFlags.EXPAND_FILL
    entry.add_child(fault_label)

    # Fault indicator
    var fault_label = Label()
    fault_label.text = "Faults: " + device["faults"].join(", ")
    fault_label.style = "red"
    fault_label.size_flags = SizeFlags.EXPAND_FILL
    entry.add_child(fault_label)

    # Buy button
    var buy_button = Button()
    buy_button.text = "Buy"
    buy_button.connect("pressed", self, "_on_buy_button_pressed", [device])
    buy_button.size_flags = SizeFlags.EXPAND_FILL
    entry.add_child(buy_button)

    # Sell button (only visible if player owns this device)
    var sell_button = Button()
    sell_button.text = "Sell"
    sell_button.connect("pressed", self, "_on_sell_button_pressed", [device])
    sell_button.visible = inventory.is_device_owned(device)
    entry.add_child(sell_button)

func _on_buy_button_pressed(device: Dictionary):
    if inventory.cash >= device["price"]:
        inventory.add_device(device["type"], device["faults"].dup(), device["price"])
        inventory.cash -= device["price"]
        cash_label.text = "Cash: " + str(inventory.cash) + "€"
        generate_market_ui()
    else:
        print("Not enough cash to buy this device!")

func _on_sell_button_pressed(device: Dictionary):
    var resale_value = inventory.sell_device(device["type"])
    if resale_value > 0:
        cash_label.text = "Cash: " + str(inventory.cash) + "€"
        generate_market_ui()
    else:
        print("You don't own this device!")