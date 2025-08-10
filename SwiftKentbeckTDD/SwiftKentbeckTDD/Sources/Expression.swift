protocol Expression {
    func reduce(to currency: String) -> Money
}
