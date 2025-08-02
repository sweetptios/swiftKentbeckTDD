    private let amount: Int

    init(_ value: Int) {
        self.amount = value
    }

final class Franc: Money {
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
