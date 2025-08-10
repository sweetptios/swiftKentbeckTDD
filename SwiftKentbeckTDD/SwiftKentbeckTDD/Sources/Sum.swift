final class Sum {
    let augend: Money
    let addend: Money

    init(augend: Money, addend: Money) {
        self.augend = augend
        self.addend = addend
    }
}

// MARK: - Expression

extension Sum: Expression {}
