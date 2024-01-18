//
//  CardViewModel.swift
//  Cena
//
//  Created by Arthur Liberal De Souza on 09/01/24.
//

import Foundation
import SwiftUI

class CardViewModel: ObservableObject {
    
    //@StateObject var model = CardModel()
    @Published var steps: [String] = ["Accessories", "Fabric", "Print", "Marketing", "Sewing", "Transport"]
    @Published var titles: [String] = ["Accessories 1", "Accessories 2",
                                       "Fabric 1", "Fabric 2",
                                       "Print 1", "Print 2",
                                       "Marketing 1", "Marketing 2",
                                       "Sewing 1", "Sewing 2",
                                       "Transport 1","Transport 2"]
    @Published var values: [Float] = [
        
        // MARK: - COLOCAR VALOR INDIVIDUAL DE CADA CARTA
        
    ]
    
    //    Exemplo:
    //    var values: [Float] = [107, 108,    <---- Primeira etapa (acesorios)
    //                           287, 89]     <---- Segunda etapa (tecidos)
    
    @Published var discounts: [Int] = [
        // MARK: - MESMO DE CIMA
    ]
    
    @Published var texts: [String] = [
        // MARK: - Mesma coisa
    
    ]
    
    func arrangeCards() {
        
        
        
    }
    
}
