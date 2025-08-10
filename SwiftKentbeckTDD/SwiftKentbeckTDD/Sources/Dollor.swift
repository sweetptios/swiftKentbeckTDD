final class Dollor: Money {
    override func times(_ multiplier: Int) -> Money {
        Dollor(amount * multiplier, currency: "USD")
    }

    override func currency() -> String {
        _currency
    }
}
