func dailyRateFrom(hourlyRate: Int) -> Double {
    
    return Double(hourlyRate) * 8.0
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
    
    let monthlyRate = dailyRateFrom(hourlyRate: hourlyRate) * 22
    let discount = monthlyRate * (discount / 100)
    let monthlyRateRounded = (monthlyRate - discount).rounded()
    
    return monthlyRateRounded
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
    
    let monthlyRate = monthlyRateFrom(hourlyRate: hourlyRate, withDiscount: discount)
    let workdaysInRounded = (budget / monthlyRate * 22).rounded(.down)
    
    return workdaysInRounded
}