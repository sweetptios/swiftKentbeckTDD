final class Dollor: Money {
    func times(_ multiplier: Int) -> Money {
        Dollor(amount * multiplier)
    }
}

