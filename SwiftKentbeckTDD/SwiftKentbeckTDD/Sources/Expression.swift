protocol Expression {
    func reduce(_ bank: Bank, to currency: String) -> Money
}
