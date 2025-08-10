final class Sum {
    let augend: Money
    let addend: Money

    init(augend: Money, addend: Money) {
        self.augend = augend
        self.addend = addend
    }

    func reduce(to currency: String) -> Money {
        let amount = augend.amount + addend.amount
        return Money(amount, currency: currency)
    }
}

// MARK: - Expression

extension Sum: Expression {}
