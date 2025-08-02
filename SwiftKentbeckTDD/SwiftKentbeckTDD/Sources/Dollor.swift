final class Dollor: Money {
    func times(_ multiplier: Int) -> Dollor {
        Dollor(amount * multiplier)
    }
}

// MARK: - Equatable

extension Dollor: Equatable {
    static func == (lhs: Dollor, rhs: Dollor) -> Bool {
        let rhs: Money = rhs as Money
        return lhs.amount == rhs.amount
    }
}
