final class Franc: Money {
    override func times(_ multiplier: Int) -> Money {
        Money.franc(amount * multiplier)
    }

    override func currency() -> String {
        _currency
    }
}
