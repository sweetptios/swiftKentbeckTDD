final class Franc {
    private let amount: Int

    init(_ value: Int) {
        self.amount = value
    }

    func times(_ multiplier: Int) -> Franc {
        Franc(amount * multiplier)
    }
}

// MARK: - Equatable

extension Franc: Equatable {
    static func == (lhs: Franc, rhs: Franc) -> Bool {
        lhs.amount == rhs.amount
    }
}
