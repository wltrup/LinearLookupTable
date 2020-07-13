import XCTest
@testable import LookupTable

final class TrigTableTests: XCTestCase {

    func test_sin_table() {
        let trigTable = TrigTable<Float>(dxMin: 0.0001, dxMax: 0.001, df: 0.00001)!
        let n = 10_000
        let dx = 0.5 * Float.pi / Float(n-1)
        var `var`: Float = .zero
        for k in 0 ..< n {
            let x = Float(k) * dx
            let actualSine = Darwin.sin(x)
            let  tableSine = trigTable.sin(x)
            let diff = actualSine - tableSine
            `var` += diff * diff
        }
        `var` /= Float(n)
        let std = sqrt(`var`)
        XCTAssert(std <= trigTable.df)
    }

    func test_cos_table() {
        let trigTable = TrigTable<Float>(dxMin: 0.0001, dxMax: 0.001, df: 0.00001)!
        let n = 10_000
        let dx = 0.5 * Float.pi / Float(n-1)
        var `var`: Float = .zero
        for k in 0 ..< n {
            let x = Float(k) * dx
            let actualSine = Darwin.cos(x)
            let  tableSine = trigTable.cos(x)
            let diff = actualSine - tableSine
            `var` += diff * diff
        }
        `var` /= Float(n)
        let std = sqrt(`var`)
        XCTAssert(std <= trigTable.df)
    }

    static var allTests = [
        ("test_sin_table", test_sin_table),
        ("test_cos_table", test_cos_table)
    ]

}
