import XCTest

final class Test: XCTestCase {
    func testAlwaysFail() {
        XCTFail("You shall not pass!")
    }

    static var allTests = [
        ("testAlwaysFail", testAlwaysFail),
  ]
}
