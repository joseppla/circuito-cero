extends Test

func setup():
    var inventory = Inventory.new()
    inventory.cash = 1000
    inventory.devices = {}
    return inventory

func "Test add_device()":
    var inventory = setup()
    var device_type = "laptop"
    var repair_state = { "battery": true, "screen": false }
    var original_price = 500
    inventory.add_device(device_type, repair_state, original_price)
    assert inventory.devices.has(device_type), "Device should be added to inventory"

func "Test sell_device() - successful sale":
    var inventory = setup()
    var device_type = "laptop"
    var repair_state = { "battery": true, "screen": false }
    var original_price = 500
    inventory.add_device(device_type, repair_state, original_price)
    var resale_value = Market.calculate_resale_value(device_type, repair_state)
    assert inventory.sell_device(device_type) == resale_value, "Sell should return resale value"
    assert inventory.cash == 1000 + resale_value, "Cash should increase by resale value"
    assert not inventory.devices.has(device_type), "Device should be removed from inventory"

func "Test sell_device() - cannot afford":
    var inventory = setup()
    inventory.cash = 50
    var device_type = "laptop"
    var repair_state = { "battery": true, "screen": false }
    var original_price = 500
    inventory.add_device(device_type, repair_state, original_price)
    assert inventory.sell_device(device_type) == 0, "Should not allow negative cash balance"