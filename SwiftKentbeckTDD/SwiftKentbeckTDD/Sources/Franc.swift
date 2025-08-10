final class Franc: Money {
    private let _currency: String

    override init(_ value: Int) {
        _currency = "CHF"

        super.init(value)
    }

    override func times(_ multiplier: Int) -> Money {
        Franc(amount * multiplier)
    }

    override func currency() -> String {
        _currency
    }
}
