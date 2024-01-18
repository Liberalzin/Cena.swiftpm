//
//  Home.swift
//  Cena
//
//  Created by Arthur Liberal De Souza on 05/12/23.
//

import SwiftUI

struct ProductCell: View {
    var body: some View {
        ZStack {
            Text("oi")
        }
    }
}

struct Produtos {
    let nome: String
    let valor: Float
}

class HomeViewViewModel: ObservableObject {
    
    var produtos: [Produtos] = [Produtos(nome: "produto1", valor: 90),Produtos(nome: "produto2", valor: 80),  Produtos(nome: "produto3", valor: 110), Produtos(nome: "produto4", valor: 90),Produtos(nome: "produto5", valor: 80),  Produtos(nome: "produto6", valor: 120), Produtos(nome: "produto09", valor: 130), Produtos(nome: "produto10", valor: 100)]
    
    
    
}

struct HomeView: View {
    let vm = HomeViewViewModel()
    @State var popularidade: Float = 0
    @State var sustentabilidade: Float = 90
    @State var progressBarId:UUID = UUID()
    @State var moneyID: UUID = UUID()
    @State var payCheck: Bool = false
    @State var money: Int = 0
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        var porcentagemFormatadaPopularidade = String(format: "%.f", popularidade)
        var porcentagemFormatadaSustentabilidade = String(format: "%.f", sustentabilidade)
        
        VStack {
            // header
            ProgressBarViewModel(popularidade: popularidade, porcentagemFormatadaPopularidade: porcentagemFormatadaPopularidade, viewId: $progressBarId)
                .id(progressBarId)
                .onReceive(timer) { _ in
                    if payCheck{
                        if popularidade < 100 {
                            print("\(popularidade)")
                            popularidade += 1
                            progressBarId = UUID()
                        }
                    }
                }
            
            HStack {
                VStack{
                    HStack{
                        Text("Data")
                            .font(.system(size: 30))
                            .bold()
                        Spacer()
                    }
                    .frame(width: screenSize.width * 0.32)
                    
                    GraphicViewModel(sustentabilidade: sustentabilidade, popularidade: popularidade, porcentagemFormatadaSustentabilidade: porcentagemFormatadaSustentabilidade, porcentagemFormatadaPopularidade: porcentagemFormatadaPopularidade)
                        .id(progressBarId)
                    LocationDataViewModel()
                    MoneyViewModel(money: $money)
                        .onReceive(timer){ _ in
                            money += 10
                            moneyID = UUID()
                        }
                        .id(moneyID)
                }
 
                
                VStack{
                    HStack{
                        Text("Investimento")
                            .font(.system(size: 30))
                            .bold()
                        Spacer()
                    }
                    .frame(width: screenSize.width * 0.62)
                    InvestViewModel(payCheck: $payCheck)
                }
                
                
            }
            .padding(.horizontal)

        }
    }
}

#Preview {
    HomeView()
}
