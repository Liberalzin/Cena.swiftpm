import SwiftUI

struct ContentView: View {
    @Binding var showNextView: Bool
    var body: some View {
        ChoosenNameView(shownextview: $showNextView)
    }
}
