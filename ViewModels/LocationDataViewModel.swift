//
//  File.swift
//  
//
//  Created by Arthur Liberal De Souza on 15/01/24.
//

import Foundation
import SwiftUI

struct LocationDataViewModel: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 30)
                .strokeBorder(.black, lineWidth: 5)
                .frame(width: .infinity, height: 120)
                .background(RoundedRectangle(cornerRadius: 25).fill(.blue))
            HStack {
                
                VStack{
                    HStack {
                        Text("Opening country:")
                            .foregroundStyle(.white)
                            .bold()
                            .font(.system(size: 20))
                        Spacer()
                        
                    }
                    
                    HStack {
                        Text("Brazil")
                            .foregroundStyle(.white)
                        Spacer()
                    }
                }
                
                VStack{
                    HStack {
                        Text("Opening date:")
                            .foregroundStyle(.white)
                            .bold()
                            .font(.system(size: 20))
                        Spacer()
                    }
                    
                    HStack {
                        Text(formatarDataAtual())
                            .foregroundStyle(.white)
                        Spacer()
                    }
                }
                
                
                
            }
            .padding()
        }
    }
    
    private func formatarDataAtual() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy" // Defina o formato desejado
        return dateFormatter.string(from: Date())
    }
    
}
