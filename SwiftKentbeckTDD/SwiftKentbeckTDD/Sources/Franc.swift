final class Franc: Money {
    override func times(_ multiplier: Int) -> Money {
        Money(amount * multiplier, currency: "CHF")
    }

    override func currency() -> String {
        _currency
    }
}
  
