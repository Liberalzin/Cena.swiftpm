//
//  File.swift
//  
//
//  Created by Arthur Liberal De Souza on 10/01/24.
//

import SwiftUI

struct InvestViewModel:View {
    
    @State var cardData = CardModel()
    @State var selectedPage:Int = 0
    @State var viewId:UUID = UUID()
    @Binding var payCheck:Bool
    
    var body: some View {
        VStack{
            
            ZStack{
                RoundedRectangle(cornerSize: CGSize(width: 25, height: 25))
                    .strokeBorder(.black, lineWidth: 5)
                    .frame(width: screenSize.width * 0.62, height: screenSize.heigth * 0.75)
                    .background(RoundedRectangle(cornerRadius: 25).fill(.blue))
                VStack{
                    
                    CirclesBar(pageSelected: $selectedPage)
                        .padding(.top, 30)
                    Spacer()
                    if(selectedPage<5){
                        ForEach(0..<2){ i in
                            InvestRectangles(title: cardData.title[selectedPage][i], description:cardData.text[selectedPage][i], value: cardData.value[selectedPage][i], checkSustentability: i, pageSelected: $selectedPage, viewId: $viewId, payCheck: $payCheck)
                        }
                        .frame(width: screenSize.width * 0.62, height: screenSize.heigth * 0.30)
                    } else{
                        MensageRectangle()
                    }
                    
                }
                .padding(.bottom, 30)
            }
            
        }
        .padding(.horizontal, 10)
        .id(viewId)
    }
}

struct CirclesBar: View {
    
    @State var pages:[Int] = [1,2,3,4,5,6]
    @Binding var pageSelected:Int
    
    var body: some View {
        HStack {
            ForEach(0..<pages.count){ i in
                ZStack{
                    Circle()
                        .foregroundStyle(i>=pageSelected+1 ? .white : .yellow)
                        .frame(width: screenSize.width * 0.04, height: screenSize.heigth * 0.04)
                    Text("\(pages[i])")
                        .foregroundStyle(.black)
                        .bold()
                }
            }
        }
    }
}

struct InvestRectangles: View {
    
    @State var title:String
    @State var description:String
    @State var value:Int
    @State var checkSustentability: Int
    @Binding var pageSelected:Int
    @Binding var viewId: UUID
    @Binding var payCheck:Bool
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerSize: CGSize(width: 25, height: 25))
                .foregroundStyle(.black)
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                .frame(width: screenSize.width * 0.55, height: screenSize.heigth * 0.30)
                .padding(.vertical, 10)
            VStack{
                Text(title)
                    .bold()
                    .font(.title)
                    .foregroundStyle(.white)
                Text(description)
                    .foregroundStyle(.white)
                    .frame(width: 500, height: 100)
                Text("R$\(value).000")
                    .bold()
                    .font(.title2)
                    .foregroundStyle(.white)
                
                Button("Comprar"){
                    
                    
                    payCheck = true
                    pageSelected += 1
                    viewId = UUID()
                    
                    if checkSustentability == 1 {
                        
                    }
                    
                }
                .buttonStyle(.borderedProminent)
                
            }
        }
        
    }
}

struct MensageRectangle: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerSize: CGSize(width: 25, height: 25))
                .foregroundStyle(.black)
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                .frame(width: screenSize.width * 0.55, height: screenSize.heigth * 0.6)
                .padding(.vertical, 10)
            VStack{
                Text("Parabens, seus investimentos foram concluidos com sucesso. Observe o crescimento da sua empresa.")
                    .bold()
                    .font(.title)
                    .foregroundStyle(.white)
                    .frame(width: 500, height: 200)
            }
        }
    }
}

