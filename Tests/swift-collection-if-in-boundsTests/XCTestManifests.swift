import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(swift_collection_if_in_boundsTests.allTests),
    ]
}
#endif
