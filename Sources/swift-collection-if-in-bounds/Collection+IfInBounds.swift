public extension Collection {

    subscript(ifInBounds index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
