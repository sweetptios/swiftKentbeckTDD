import Quick
import Nimble

@testable import SwiftKentbeckTDD

final class MoneyTest: AsyncSpec {

    override class func spec() {

        it("test multiplication") {
            let five = Dollor(5)
            var product = five.times(2)
            expect(product.amount).to(equal(10))
            product = five.times(3)
            expect(product.amount).to(equal(15))
        }

        it("test equally") {
            expect(Dollor(5) == Dollor(5)).to(beTrue())
        }
    }
}
