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
    }
}
