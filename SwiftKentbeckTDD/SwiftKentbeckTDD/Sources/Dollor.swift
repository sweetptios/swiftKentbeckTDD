final class Dollor: Money {
    override func times(_ multiplier: Int) -> Money {
        Dollor(amount * multiplier)
    }
}

