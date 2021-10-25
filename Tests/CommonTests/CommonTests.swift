import XCTest
@testable import Common

final class CommonTests: XCTestCase {
  
  func testHtmlToString() {
    let sample = "<p>title</p>".htmlToString
    let expectation = """
    title
    
    """
    XCTAssertEqual(sample, expectation)
  }
  
  func testDateFormat() {
    let sample = Tools().changeDateFormat(dateString: "2021-04-17", fromFormat: "yyyy-MM-dd", toFormat: "MMM d, yyyy")
    let expectation = "Apr 17, 2021"
    XCTAssertEqual(sample, expectation)
  }
  
}
