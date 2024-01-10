//
//  ChoosenNameView.swift
//  Cena
//
//  Created by Arthur Liberal De Souza on 06/12/23.
//

import SwiftUI

struct ChoosenNameView: View {
    @State var textfield: String = ""
    @Binding var shownextview: Bool

    var body: some View {
        VStack {
            Text("Escolha o nome da sua empresa")
                .font(.largeTitle)
            TextField("", text: $textfield)
                .frame(width: 642, height: 83)
                .background(.gray.opacity(0.8))
            .clipShape(RoundedRectangle(cornerRadius: 50.0))
            ZStack{
                RoundedRectangle(cornerRadius: 40.0)
                    .frame(width: 642, height: 383)
                    .foregroundStyle(.gray)
                Text("texto")
                    .frame(width: 600, height: 350)
                    
                
            }
            .padding()
            Button{
                shownextview = true
            } label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 20.0)
                        .frame(width: 642, height: 94)
                        .foregroundStyle(.black)
                    Text("texto")
                        .font(.title)
                        .foregroundStyle(.white)
                }
            }
        }
    }
}

//#Preview {
//    ChoosenNameView()
//}
