var heights: [Int] = [0, 4, 6, 8, 12, 24, 33]
let allCoordinates = world.allPossibleCoordinates

var index = 0
for coordinate in allCoordinates {
    if index == heights.count {
        index = 0
    }
    for i in 0...heights[index] {
        world.place(Block(), at: coordinate)
    }
    index += 1
}
