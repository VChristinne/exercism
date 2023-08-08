func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
    let monthsPrice = price / (12 * 5)
    
    if monthsPrice <= monthlyBudget {
        return "Yes! I'm getting a \(vehicle)"
    
    } else if monthsPrice <= monthlyBudget * 1.1 {
        return "I'll have to be frugal if I want a \(vehicle)"
    
    } else {
        return "Darn! No \(vehicle) for me"
    }
}

func licenseType(numberOfWheels wheels: Int) -> String {
    switch(wheels) {
        case 2, 3:
            return "You will need a motorcycle license for your vehicle"
        case 4,6:
            return "You will need an automobile license for your vehicle"
        case 18:
            return "You will need a commercial trucking license for your vehicle"
        default:
            return "We do not issue licenses for those types of vehicles"
    }
}

func calculateResellPrice(originalPrice: Int, yearsOld: Int) -> Int {
    if yearsOld < 3 {
        return Int(Double(originalPrice) * 0.8)
    } else if yearsOld >= 10 {
        return Int(Double(originalPrice) * 0.5)
    } else {
        return Int(Double(originalPrice) * 0.7)
    }
}