import XCTest
@testable import LookupTable

final class LookupTableTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(LookupTable().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
