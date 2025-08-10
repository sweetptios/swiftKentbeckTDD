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

    func times(_ multiplier: Int) -> Money {
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

    func plus(_ append: Money) -> Expression {
        Sum(augend: self, addend: append)
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

extension Money: Expression {}
