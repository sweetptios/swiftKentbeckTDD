import Quick
import Nimble

@testable import SwiftKentbeckTDD

final class MoneyTest: AsyncSpec {

    override class func spec() {

        it("test multiplication") {
            let five = Money.dollor(5)
            expect(five.times(2)).to(equal(Dollor(10)))
            expect(five.times(3)).to(equal(Dollor(15)))
        }

        it("test equally") {
            expect(Dollor(5) == Dollor(5)).to(beTrue())
            expect(Dollor(5) == Dollor(6)).to(beFalsy())
            expect(Franc(5) == Franc(5)).to(beTrue())
            expect(Franc(5) == Franc(6)).to(beFalsy())
            expect(Franc(5)).notTo(equal(Dollor(5)))
        }

        it("test franc multiplication") {
            let five = Franc(5)
            expect(five.times(2)).to(equal(Franc(10)))
            expect(five.times(3)).to(equal(Franc(15)))
        }
    }
}
