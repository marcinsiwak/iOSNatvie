import Foundation
import SwiftUI

class SecondViewModel: ObservableObject {
    @Published var farewellString: String = ""
    
    func fetchFarewell() {
        farewellString = "Goodbye, world!"
    }
}
