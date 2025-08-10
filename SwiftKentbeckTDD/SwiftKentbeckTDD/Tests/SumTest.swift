import Quick
import Nimble

@testable import SwiftKentbeckTDD

final class SumTest: AsyncSpec {

    override class func spec() {

        it("test plus returns sum") {
            let five = Money.dollor(5)
            let result: SwiftKentbeckTDD.Expression = five.plus(five)
            let sum = result as Sum
            expect(sum.augend).to(equal(five))
            expect(sum.addend).to(equal(five))
        }
    }
}
