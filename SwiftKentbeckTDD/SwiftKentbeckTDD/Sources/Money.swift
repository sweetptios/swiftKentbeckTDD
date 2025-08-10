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
        fatalError()
    }

    static func dollor(_ amount: Int) -> Money {
        Dollor(amount, currency: "")
    }

    static func franc(_ amount: Int) -> Money {
        Franc(amount, currency: "")
    }

    func currency() -> String {
        _currency
    }
}

// MARK: - Equatable

extension Money: Equatable {
    static func == (lhs: Money, rhs: Money) -> Bool {
        return lhs.amount == rhs.amount && type(of: lhs) == type(of: rhs)
    }
}
