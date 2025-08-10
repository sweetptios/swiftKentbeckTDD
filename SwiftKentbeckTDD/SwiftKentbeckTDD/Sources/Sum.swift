final class Sum {
    let augend: Expression
    let addend: Expression

    init(augend: Expression, addend: Expression) {
        self.augend = augend
        self.addend = addend
    }

    func reduce(_ bank: Bank, to currency: String) -> Money {
        let amount = augend.reduce(bank, to: currency).amount
            + addend.reduce(bank, to: currency).amount
        return Money(amount, currency: currency)
    }
}

// MARK: - Expression

extension Sum: Expression {
    func plus(_ addend: any Expression) -> any Expression {
        return Sum(augend: self, addend: addend)
    }
}
