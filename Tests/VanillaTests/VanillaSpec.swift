import Quick
import Nimble

class VanillaSpec: QuickSpec {
    override func spec() {
        describe("Vanilla tests") {
            context("Test that Quick and Nimble are setup") {
                it("True is always true") {
                    expect(true).to(equal(true))
                }

                it("false is always false") {
                    expect(false).to(equal(false))                    
                }

                it("false is not true") {
                    expect(false).toNot(equal(true))                    
                }

                it("true is not false") {
                    expect(false).toNot(equal(true))                    
                }                
            }
        }
    }
}