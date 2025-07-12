import Quick
import Nimble

@testable import SwiftKentbeckTDD

final class MoneyTest: AsyncSpec {

    override class func spec() {

        it("testMultiplication") {
            let five = Dollor(5)
            five.times(2)
            expect(five.amount).to(equal(10))
        }
    }
}
