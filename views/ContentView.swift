import SwiftUI

struct ContentView: View {
    @Binding var showNextView: Bool
    @Binding var textfield: String

    var body: some View {
        ChoosenNameView(textfield: textfield, shownextview: $showNextView)
    }
}
