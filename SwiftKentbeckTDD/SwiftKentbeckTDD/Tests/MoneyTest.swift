import Quick
import Nimble

@testable import SwiftKentbeckTDD

final class MoneyTest: AsyncSpec {

    override class func spec() {

        it("test multiplication") {
            let five = Dollor(5)
            expect(five.times(2)).to(equal(Dollor(10)))
            expect(five.times(3)).to(equal(Dollor(15)))
        }

        it("test equally") {
            expect(Dollor(5) == Dollor(5)).to(beTrue())
            expect(Dollor(5) == Dollor(6)).to(beFalsy())
        }
    }
}
