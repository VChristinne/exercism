let expectedMinutesInOven: Int = 40
let layerMinutes: Int = 2


func remainingMinutesInOven(elapsedMinutes: Int) -> Int {
    expectedMinutesInOven - elapsedMinutes 
}


func preparationTimeInMinutes(layers: Int) -> Int {
    layerMinutes * layers
}


func totalTimeInMinutes(layers: Int, elapsedMinutes: Int) -> Int {
    preparationTimeInMinutes(layers: layers) + elapsedMinutes
}