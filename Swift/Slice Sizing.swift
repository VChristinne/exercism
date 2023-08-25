func sliceSize(diameter: Double?, slices: Int?) -> Double? {
    guard let diameter = diameter, let slices = slices, diameter >= 0, slices > 0 else { return nil }
    let radius = (diameter / 2)   
    return (Double.pi * (radius * radius)) / Double(slices)
}

func biggestSlice(diameterA: String, slicesA: String, diameterB: String, slicesB: String ) -> String {
    let sliceSizeA = sliceSize(diameter: Double(diameterA), slices: Int(slicesA)) ?? -1
    let sliceSizeB = sliceSize(diameter: Double(diameterB), slices: Int(slicesB)) ?? -1

    if sliceSizeA > sliceSizeB {
        return "Slice A is bigger"
    } else if sliceSizeA < sliceSizeB {
        return "Slice B is bigger"
    } else {
        return "Neither slice is bigger"
    }
}