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
            expect(Franc(5) == Franc(5)).to(beTrue())
            expect(Franc(5) == Franc(6)).to(beFalsy())
            expect(Franc(5)).notTo(equal(Money.dollor(5)))
        }

        it("test franc multiplication") {
            let five = Franc(5)
            expect(five.times(2)).to(equal(Franc(10)))
            expect(five.times(3)).to(equal(Franc(15)))
        }
    }
}
