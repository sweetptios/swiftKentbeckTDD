final class Dollor: Money {
    override func times(_ multiplier: Int) -> Money {
        Dollor(amount * multiplier, currency: "")
    }

    override func currency() -> String {
        _currency
    }
}
