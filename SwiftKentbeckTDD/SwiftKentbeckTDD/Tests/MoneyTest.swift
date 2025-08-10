import Quick
import Nimble

@testable import SwiftKentbeckTDD
@testable import protocol SwiftKentbeckTDD.Expression

final class MoneyTest: AsyncSpec {

    override class func spec() {

        it("test multiplication") {
            let five: Money = Money.dollor(5)
            expect(five.times(2) as! Money).to(equal(Money.dollor(10)))
            expect(five.times(3) as! Money).to(equal(Money.dollor(15)))
        }

        it("test equally") {
            expect(Money.dollor(5) == Money.dollor(5)).to(beTrue())
            expect(Money.dollor(5) == Money.dollor(6)).to(beFalsy())
            expect(Money.franc(5)).notTo(equal(Money.dollor(5)))
        }

        it("test currency") {
            expect(Money.dollor(1).currency()).to(equal("USD"))
            expect(Money.franc(1).currency()).to(equal("CHF"))
        }

        it("test simple addition") {
            let five = Money.dollor(5)
            let sum: SwiftKentbeckTDD.Expression = five.plus(five)
            let bank = Bank()
            let reduced: Money = bank.reduce(sum, "USD")
            expect(reduced).to(equal(Money.dollor(10)))
        }

        it("test plus returns sum") {
            let five = Money.dollor(5)
            let result: SwiftKentbeckTDD.Expression = five.plus(five)
            let sum = result as! Sum
            expect(sum.augend as! Money).to(equal(five))
            expect(sum.addend as! Money).to(equal(five))
        }
    }
}
