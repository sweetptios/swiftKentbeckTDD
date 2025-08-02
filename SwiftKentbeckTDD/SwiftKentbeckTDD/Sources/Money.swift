class Money {
    let amount: Int

    init(_ value: Int) {
        self.amount = value
    }
}

// MARK: - Equatable

extension Money: Equatable {
    static func == (lhs: Money, rhs: Money) -> Bool {
        return lhs.amount == rhs.amount && type(of: lhs) == type(of: rhs)
    }
}
