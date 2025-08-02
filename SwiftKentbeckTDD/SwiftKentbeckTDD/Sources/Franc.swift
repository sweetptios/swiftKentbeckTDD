final class Franc: Money {
    override func times(_ multiplier: Int) -> Money {
        Franc(amount * multiplier)
    }
}
