final class Franc: Money {
    override func times(_ multiplier: Int) -> Money {
        Franc(amount * multiplier, currency: "")
    }

    override func currency() -> String {
        _currency
    }
}
