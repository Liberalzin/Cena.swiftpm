//
//  RoundViewModel.swift
//  Cena
//
//  Created by Arthur Liberal De Souza on 09/01/24.
//

import Foundation
import SwiftUI

class RoundViewModel: ObservableObject {
    
    @Published var cards: [CardModel] = []
    @Published var step: String = ""
    @Published var numOfRound: Int = 0
    
    var steps: [String] = ["Accessories", "Fabric", "Print", "Marketing", "Sewing", "Transport"]
    var titles: [String] = ["Accessories 1", "Accessories 2",
                                       "Fabric 1", "Fabric 2",
                                       "Print 1", "Print 2",
                                       "Marketing 1", "Marketing 2",
                                       "Sewing 1", "Sewing 2",
                                       "Transport 1","Transport 2"]
    var values: [Float] = [
        
        // MARK: - COLOCAR VALOR INDIVIDUAL DE CADA CARTA
        
    ]
    
    //    Exemplo:
    //    var values: [Float] = [107, 108,    <---- Primeira etapa (acesorios)
    //                           287, 89]     <---- Segunda etapa (tecidos)
    
    var discounts: [Int] = [
        // MARK: - MESMO DE CIMA
    ]
    
    var texts: [String] = [
        // MARK: - Mesma coisa
    
    ]
    
    let cardsCount: Int = 12
    
    // MARK: - Função que retorna as cartas atuais da rodada
//    func distributeCards() -> [RoundModel] {
//        
//        var cards: [CardModel] = []
//        var rounds: [RoundModel] = []
//        
//        for i in 0..<step.count {
//            for j in 0..<titles.count {
//                for _ in 0..<2 {
//                    let card = CardModel(title: titles[j], step: steps[i], value: values[j], discount: discounts[i], text: texts[j])
//                    cards.append(card)
//                    numOfRound += 1
//                }
//                let cardRound = RoundModel(cards: cards, numOfRound: numOfRound)
//                rounds.append(cardRound)
//            }
//        }
//        return rounds
//    }
    
}
