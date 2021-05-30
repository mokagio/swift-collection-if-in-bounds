# swift-collection-if-in-bounds

Adds a subscript operator to [`Collection`](https://developer.apple.com/documentation/swift/collection) returning the `Element` at the given index if found, `.none` otherwise.

The Swift team has a strong and valid rationale for why this is not part of the standard library, see [this discussion for example](https://forums.swift.org/t/draft-adding-safe-indexing-to-array/10767/122).
Personally, I am a developer that doesn't trust the code he writes and would rather spend extra time in, possibly unnecessary, `Optional` unwrapping to remove the chance of runtime failures.

This functionality is **particularly useful in unit testing**.

```swift
let array = ["a", "b", "c"]
let index = 3


// Before – Option 1: Let the test crash
//
XCTAssertEqual(array[index], "a")
  // => "Fatal error: Index out of range" if `index` is out of bounds

// Before – Option 2: Won't crash but requires extra coding
guard array.count > index else { return XCTFail("Index #{index} out of bounds") }
XCTAssertEqual(array[index], "a")

// After
XCTAssertEqual(array[ifInBounds: index], "a")
```
