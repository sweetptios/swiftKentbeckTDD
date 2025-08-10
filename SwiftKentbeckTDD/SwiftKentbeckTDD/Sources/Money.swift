class Money {
    let amount: Int

    init(_ value: Int) {
        self.amount = value
    }

    func times(_ multiplier: Int) -> Money {
        fatalError()
    }

    static func dollor(_ amount: Int) -> Money {
        Dollor(amount)
    }

    static func franc(_ amount: Int) -> Money {
        Franc(amount)
    }

    func currency() -> String {
        fatalError()
    }
}

// MARK: - Equatable

extension Money: Equatable {
    static func == (lhs: Money, rhs: Money) -> Bool {
        return lhs.amount == rhs.amount && type(of: lhs) == type(of: rhs)
    }
}
