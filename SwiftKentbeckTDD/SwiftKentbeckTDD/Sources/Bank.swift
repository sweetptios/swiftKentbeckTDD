final class Bank {
    func reduce(_ source: Expression, _ to: String) -> Money {
        guard let sum = source as? Sum
        else { return Money(0, currency: to) }

        return sum.reduce(to: to)
    }
}
