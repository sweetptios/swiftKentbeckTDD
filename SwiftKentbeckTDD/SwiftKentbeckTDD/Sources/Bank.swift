final class Bank {
    func reduce(_ source: Expression, _ to: String) -> Money {
        if let money = source as? Money {
            return money
        }
        guard let sum = source as? Sum
        else { return Money(0, currency: to) }

        return sum.reduce(to: to)
    }
}
