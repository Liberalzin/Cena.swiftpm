//
//  File.swift
//  
//
//  Created by Arthur Liberal De Souza on 15/01/24.
//

import Foundation
import SwiftUI

struct GraphicViewModel: View {
    
    @State var sustentabilidade: Float
    @State var popularidade: Float
    @State var porcentagemFormatadaSustentabilidade: String
    @State var porcentagemFormatadaPopularidade: String
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 30)
                .strokeBorder(.black, lineWidth: 5)
                .frame(width: .infinity, height: screenSize.heigth * 0.46)
                .background(RoundedRectangle(cornerRadius: 25).fill(.blue))
            HStack {
                
                
                VStack {
                    Text("Popularity")
                        .foregroundStyle(.white)
                        .font(.system(size: 20))
                        .bold()
                    
                    Spacer()
                    
                    ZStack {
                        //sombra
                        Circle()
                            .trim(from: 0, to: CGFloat(popularidade)/100)
                            .stroke(.black ,style: StrokeStyle(lineWidth: 80, lineJoin: .round))
                            .frame(width: 80)
                            .opacity(0.3)
                            .blur(radius: 5)
                            .padding(.vertical, 70)
                            .offset(y: 3)
                        
                        //grafico sustentabilidade
                        Circle()
                            .trim(from: 0, to: CGFloat(popularidade)/100)
                            .stroke(style: StrokeStyle(lineWidth: 80, lineJoin: .round))
                            .frame(width: 80)
                            .foregroundColor(.purple)
                            .padding(.vertical, 70)
                        
                        Text(porcentagemFormatadaPopularidade + "%")
                            .bold()
                            .foregroundStyle(.white)
                    }
                    
                    
                }
                
                Spacer()
                
                VStack {
                    Text("Sustentability")
                        .foregroundStyle(.white)
                        .font(.system(size: 20))
                        .bold()
                    
                    Spacer()
                    
                    
                    
                    ZStack {
                        Circle()
                            .trim(from: 0, to: CGFloat(sustentabilidade)/100)
                            .stroke(.black ,style: StrokeStyle(lineWidth: 80, lineJoin: .round))
                            .frame(width: 80)
                            .opacity(0.3)
                            .blur(radius: 4)
                            .padding(.vertical, 70)
                            .offset(y: 3)
                        
                        Circle()
                            .trim(from: 0, to: CGFloat(sustentabilidade)/100)
                            .stroke(style: StrokeStyle(lineWidth: 80, lineJoin: .round))
                            .frame(width: 80)
                            .foregroundColor(.green)
                            .padding(.vertical, 70)
                        
                        Text(porcentagemFormatadaSustentabilidade + "%")
                            .bold()
                            .foregroundStyle(.white)
                    }
                    
                }
                
                
            }
            
            .padding(50)
        }
    }
}
