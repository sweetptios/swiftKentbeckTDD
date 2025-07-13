final class Dollor {
    private(set) var amount: Int

    init(_ value: Int) {
        self.amount = value
    }

    func times(_ multiplier: Int) -> Dollor {
        amount *= multiplier
        return Dollor(0)
    }
}
