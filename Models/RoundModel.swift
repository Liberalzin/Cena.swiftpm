//
//  RoundModel.swift
//  Cena
//
//  Created by Arthur Liberal De Souza on 09/01/24.
//

import Foundation

class RoundModel {
    
    var cards: [CardModel]
    var numOfRound: Int
    
    init(cards: [CardModel], numOfRound: Int) {
        self.cards = cards
        self.numOfRound = numOfRound
    }
    
}
