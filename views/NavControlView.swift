//
//  NavControlView.swift
//  Cena
//
//  Created by Arthur Liberal De Souza on 05/12/23.
//

import SwiftUI

struct NavControlView: View {
    @State var showview: Bool = false
    var body: some View {
        if showview == false {
            ChoosenNameView(shownextview: $showview)
        }
        else {
            HomeView()
        }
    }
}

#Preview {
    NavControlView()
}
