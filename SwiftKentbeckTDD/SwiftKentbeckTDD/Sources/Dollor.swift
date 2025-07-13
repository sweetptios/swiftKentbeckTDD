final class Dollor {
    private(set) var amount: Int

    init(_ value: Int) {
        self.amount = value
    }

    func times(_ multiplier: Int) -> Dollor {
        Dollor(amount * multiplier)
    }
}
