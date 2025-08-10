final class Bank {
    func reduce(_ source: Expression, _ to: String) -> Money {
         source.reduce(self, to: to)
    }

    func rate(from: String, to: String) -> Int {
        from == "CHF" && to == "USD" ? 2 : 1
    }
}
