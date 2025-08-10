import Nimble
import Quick

@testable import SwiftKentbeckTDD
@testable import protocol SwiftKentbeckTDD.Expression

final class BankTest: AsyncSpec {
    override static func spec() {
        it("reduce sum") {
            let sum: Expression = Sum(augend: Money.dollor(3), addend: Money.dollor(4))
            let bank = Bank()
            let result = bank.reduce(sum, "USD")
            expect(result).to(equal(Money.dollor(7)))
        }

        it("reduce money") {
            let bank = Bank()
            let result = bank.reduce(Money.dollor(1), "USD")
            expect(result).to(equal(Money.dollor(1)))
        }

        it("reduce money different currency") {
            let bank = Bank()
            bank.addRate("CHF", "USD", 2)
            let result = bank.reduce(Money.franc(2), "USD")
            expect(result) == Money.dollor(1)
        }

        it("identify rate") {
            expect(Bank().rate(from: "USD", to: "USD")).to(equal(1))
        }

        it("mixed addition") {
            let fiveBucs: Expression = Money.dollor(5)
            let tenFrancs: Expression = Money.franc(10)

            let bank = Bank()
            bank.addRate("CHF", "USD", 2)
            let result = bank.reduce(fiveBucs.plus(tenFrancs), "USD")
            expect(result) == Money.dollor(10)
        }
    }
}
