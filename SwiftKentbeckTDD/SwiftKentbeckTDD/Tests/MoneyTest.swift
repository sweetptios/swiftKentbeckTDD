import Quick
import Nimble

@testable import SwiftKentbeckTDD

final class MoneyTest: AsyncSpec {

    override class func spec() {

        it("testMultiplication") {
            let five = Dollor(5)
            var product = five.times(2)
            expect(product.amount).to(equal(10))
            product = five.times(3)
            expect(product.amount).to(equal(15))
        }
    }
}
