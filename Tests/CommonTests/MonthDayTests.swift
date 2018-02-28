import XCTest
@testable import Common

class MonthDayTests: XCTestCase {
    func testEquatable() {
        let md1 = MonthDay(month: 12, day: 1)
        let md2 = MonthDay(month: 12, day: 1)
        
        XCTAssertEqual(md1, md2)
        
        let md3 = MonthDay(month: 3, day: 6)

        XCTAssertNotEqual(md1, md3)
    }
    
    func testComparable() {
        let md1 = MonthDay(month: 2, day: 10)
        let md2 = MonthDay(month: 3, day: 6)

        XCTAssertTrue(md1 < md2)
    }
}
