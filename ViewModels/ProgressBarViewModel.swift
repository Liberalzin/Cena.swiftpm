//
//  File.swift
//  
//
//  Created by Arthur Liberal De Souza on 16/01/24.
//

import Foundation
import SwiftUI

struct ProgressBarViewModel:View {
    
    @State var popularidade:Float
    @State var porcentagemFormatadaPopularidade:String
    @Binding var viewId:UUID
    
    var body: some View {
        ZStack {
            VStack {
                Rectangle()
                    .foregroundStyle(.gray)
                    .frame(maxHeight: UIScreen.main.bounds.height * 0.1)
                Spacer()
                
            }
            RoundedRectangle(cornerRadius: 50)
                .foregroundStyle(.black)
            
            HStack {
                Spacer()
                
                VStack {
                    Text("Popularity")
                        .font(.system(size: 30))
                        .foregroundStyle(.white)
                        .bold()
                    ZStack (alignment: .leading) {
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: 800, height: 30)
                            .foregroundStyle(.white)
                        
                        
                        ZStack (alignment: .leading) {
                            RoundedRectangle(cornerRadius: 25)
                                .frame(width: CGFloat(popularidade) * 8, height: 30)
                                .foregroundStyle(.purple)
                                .animation(.easeInOut(duration: 0.5))
                            
                            Text(porcentagemFormatadaPopularidade + "%")
                                .foregroundStyle(.black)
                                .bold()
                                .padding(.horizontal)
                        }
                        
                    }

                }
                
                Spacer()
                
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(.white)
                    Text(formatarDataAtual())
                        .bold()
                }
                .frame(width: 110, height: 30)
                .padding(.bottom, -25)
                .padding(.trailing, 30)
                .offset(x: -50)
            }
            .padding()
        }
        .id(viewId)
        .padding(.horizontal)
        .frame(maxHeight: UIScreen.main.bounds.height * 0.18)
        .padding(.top, -50) 

    }
    
    private func formatarDataAtual() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy" // Defina o formato desejado
        return dateFormatter.string(from: Date())
    }
}
