//
//  File.swift
//  
//
//  Created by Arthur Liberal De Souza on 15/01/24.
//

import Foundation
import SwiftUI

struct MoneyViewModel: View {
    
    @Binding var money: Int
    
    var body: some View{
        
        VStack{
            
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .strokeBorder(.black, lineWidth: 5)
                    .frame(height: 90)
                    .background(RoundedRectangle(cornerRadius: 25).fill(.yellow))
                HStack {
                    ZStack {
                        Circle()
                            .stroke(lineWidth: 3)
                            .foregroundStyle(.black)
                            .frame(width: 40)
                        Text("$")
                            .bold()
                            .font(.system(size: 35))
                    }
                    
                    
                    Text("\(money)")
                        .bold()
                        .font(.system(size: 40))
                        .frame(width: 320, height: 75, alignment: .trailing)
                        .foregroundStyle(.black)
                }
                .padding(.horizontal, 6)
            }
            
        }
        
    }
    
}
