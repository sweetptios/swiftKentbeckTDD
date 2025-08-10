import Nimble
import Quick

final class HashTableTest: AsyncSpec {
    override class func spec() {
        it("array equals") {
            expect(["abc"]) == ["abc"]
        }

        it("2 count array different orders equals") {
            expect(["abc", "def"]) != ["def", "abc"]
        }

        // 별도의 subscript 구현 필요
        it("2 count array available for Hash Table Key") {
//            let map = [[String]: Int]
//            let map = [
//                [["abc", "def"]: 3],
//                [["def", "abc"]: 4]
//            ]
//
//            let firstValue = map[["abc","def"]]
//
//            expect(firstValue) == 3
        }
    }
}
