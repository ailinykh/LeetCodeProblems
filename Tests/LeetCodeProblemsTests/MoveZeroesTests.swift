import XCTest
import LeetCodeProblems

final class MoveZeroesTest: XCTestCase {
    func testCase() {
        let s = MoveZeroes()
        
        var arr1 = [0,1,0,3,12]
        s.moveZeroes(&arr1)
        XCTAssertEqual(arr1, [1,3,12,0,0])
        
        var arr2 = [0]
        s.moveZeroes(&arr2)
        XCTAssertEqual(arr2, [0])
        
        var arr3 = [Int]()
        s.moveZeroes(&arr3)
        XCTAssertEqual(arr3, [])
    }
}
