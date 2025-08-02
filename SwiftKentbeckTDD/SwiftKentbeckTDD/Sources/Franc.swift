final class Franc: Money {
    func times(_ multiplier: Int) -> Franc {
        Franc(amount * multiplier)
    }
}
