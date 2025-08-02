final class Franc: Money {
    func times(_ multiplier: Int) -> Money {
        Franc(amount * multiplier)
    }
}
