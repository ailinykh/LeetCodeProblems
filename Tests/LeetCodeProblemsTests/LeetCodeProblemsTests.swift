import XCTest
import LeetCodeProblems

final class LeetCodeProblemsTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(LeetCodeProblems().text, "Let's solve them all!")

        // var expected = "nil"
        // let pipe = Pipe()
        // pipe.fileHandleForReading.readabilityHandler = { fileHandle in
        //     expected = String(data: fileHandle.availableData, encoding: .utf8) ?? "nil"
        // }
        // dup2(FileHandle.standardOutput.fileDescriptor, pipe.fileHandleForWriting.fileDescriptor)
        
        // LeetCodeProblems.main()
        // // respore stdout
        // freopen("/dev/stdout", "a", stdout)
        // pipe.fileHandleForReading.closeFile()

        // XCTAssertEqual(expected, "Let's solve them all!")
    }

    @MainActor
    func testMain() {
       XCTAssertNoThrow(LeetCodeProblems.main())
    }
}
