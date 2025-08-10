final class Bank {
    func reduce(_ source: Expression, _ to: String) -> Money {
         source.reduce(self, to: to)
    }

    func rate(from: String, to: String) -> Int {
        from == "CHF" && to == "USD" ? 2 : 1
    }

    func addRate(_ from: String, _ to: String, _ value: Int) {

    }
}

// MARK: - Pair

private class Pair {
    private let from: String
    private let to: String

    init(from: String, to: String) {
        self.from = from
        self.to = to
    }
}

// MARK: - Equatable

extension Pair: Equatable {
    static func == (lhs: Pair, rhs: Pair) -> Bool {
        lhs.from == rhs.from && lhs.to == rhs.to
    }
}

// MARK: - Hashable

extension Pair: Hashable {
    func hash(into hasher: inout Hasher) {
        from.hash(into: &hasher)
        to.hash(into: &hasher)
    }
}
