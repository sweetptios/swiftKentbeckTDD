import Quick
import Nimble

@testable import SwiftKentbeckTDD

final class MoneyTest: AsyncSpec {

    override class func spec() {

        it("test multiplication") {
            let five: Money = Money.dollor(5)
            expect(five.times(2)).to(equal(Money.dollor(10)))
            expect(five.times(3)).to(equal(Money.dollor(15)))
        }

        it("test equally") {
            expect(Money.dollor(5) == Money.dollor(5)).to(beTrue())
            expect(Money.dollor(5) == Money.dollor(6)).to(beFalsy())
            expect(Money.franc(5)).notTo(equal(Money.dollor(5)))
        }

        it("test Money.franc multiplication") {
            let five = Money.franc(5)
            expect(five.times(2)).to(equal(Money.franc(10)))
            expect(five.times(3)).to(equal(Money.franc(15)))
        }

        it("test currency") {
            expect(Money.dollor(1).currency()).to(equal("USD"))
            expect(Money.franc(1).currency()).to(equal("CHF"))
        }
    }
}
