final class Dollor: Money {
    private let _currency: String

    override init(_ value: Int) {
        _currency = "USD"

        super.init(value)
    }

    override func times(_ multiplier: Int) -> Money {
        Dollor(amount * multiplier)
    }

    override func currency() -> String {
        _currency
    }
}

