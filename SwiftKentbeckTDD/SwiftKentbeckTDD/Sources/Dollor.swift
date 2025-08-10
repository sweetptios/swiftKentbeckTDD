final class Dollor: Money {
    override func times(_ multiplier: Int) -> Money {
        Money.dollor(amount * multiplier)
    }

    override func currency() -> String {
        _currency
    }
}
