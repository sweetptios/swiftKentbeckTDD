class Money {
    let amount: Int
    let _currency: String

    init(
        _ value: Int,
        currency: String
    ) {
        self.amount = value
        _currency = currency
    }

    func times(_ multiplier: Int) -> Expression {
        Money(amount * multiplier, currency: _currency)
    }

    static func dollor(_ amount: Int) -> Money {
        Money(amount, currency: "USD")
    }

    static func franc(_ amount: Int) -> Money {
        Money(amount, currency: "CHF")
    }

    func currency() -> String {
        _currency
    }
}

// MARK: - Equatable

extension Money: Equatable {
    static func == (lhs: Money, rhs: Money) -> Bool {
        return lhs.amount == rhs.amount && lhs.currency() == rhs.currency()
    }
}

// MARK: - CustomDebugStringConvertible

extension Money: CustomDebugStringConvertible {
    var debugDescription: String {
        "\(amount) \(_currency)"
    }
}

// MARK: - Expression

extension Money: Expression {
    func reduce(_ bank: Bank, to currency: String) -> Money {
        let rate = bank.rate(from: _currency, to: currency)
        return Money(amount / rate, currency: currency)
    }

    func plus(_ addend: Expression) -> Expression {
        if let addend = addend as? Money,
            self._currency == addend.currency() {
            return Money(amount + addend.amount, currency: _currency)
        }

        return Sum(augend: self, addend: addend)
    }
}
