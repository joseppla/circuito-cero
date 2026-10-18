extends Test

func setup():
    return Market.new()

func "Test calculate_resale_value() - perfect condition":
    var market = setup()
    var resale_value = market.calculate_resale_value("laptop", { "battery": true, "screen": true })
    assert resale_value == 500, "Perfect condition should return original price"

func "Test calculate_resale_value() - damaged condition":
    var market = setup()
    var resale_value = market.calculate_resale_value("laptop", { "battery": false, "screen": false })
    assert resale_value == 250, "Damaged condition should return 50% of original price"