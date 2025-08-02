final class Dollor: Money {
    func times(_ multiplier: Int) -> Dollor {
        Dollor(amount * multiplier)
    }
}

