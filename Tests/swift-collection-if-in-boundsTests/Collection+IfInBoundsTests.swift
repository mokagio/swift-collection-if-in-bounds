import XCTest
@testable import swift_collection_if_in_bounds

final class Collection_IfInBoundsTests: XCTestCase {

    func testReturnsElementWhenInBounds() {
        XCTAssertEqual(["a", "b", "c"][ifInBounds: 0], "a")
        XCTAssertEqual([1, 2, 3][ifInBounds: 2], 3)
    }

    func testReturnsNoneWhenOutOfLowerBounds() {
        XCTAssertEqual(["a", "b", "c"][ifInBounds: -1], .none)
        XCTAssertEqual([1, 2, 3][ifInBounds: Int.min], .none)
    }

    func testReturnsNoneWhenOutOfUpperBounds() {
        XCTAssertEqual(["a", "b", "c"][ifInBounds: 3], .none)
        XCTAssertEqual([1, 2, 3][ifInBounds: Int.max], .none)
    }

    static var allTests = [
        ("testReturnsElementWhenInBounds", testReturnsElementWhenInBounds),
        ("testReturnsNoneWhenOutOfLowerBounds", testReturnsNoneWhenOutOfLowerBounds),
        ("testReturnsNoneWhenOutOfUpperBounds", testReturnsNoneWhenOutOfUpperBounds),
    ]
}
