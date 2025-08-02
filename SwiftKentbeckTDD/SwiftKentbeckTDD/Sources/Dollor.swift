    private let amount: Int

    init(_ value: Int) {
        self.amount = value
    }

final class Dollor: Money {
    func times(_ multiplier: Int) -> Dollor {
        Dollor(amount * multiplier)
    }
}

// MARK: - Equatable

extension Dollor: Equatable {
    static func == (lhs: Dollor, rhs: Dollor) -> Bool {
        lhs.amount == rhs.amount
    }
}
