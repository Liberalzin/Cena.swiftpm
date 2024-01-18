//
//  CardModel.swift
//  Cena
//
//  Created by Arthur Liberal De Souza on 09/01/24.
//

import Foundation

import SwiftUI

class CardModel: ObservableObject {
    
    var title: [[String]]
    var step: [[String]]
    var value: [[Int]]
    var discount: [Int]
    var text: [[String]]
    
    init() {
        title = [["Poliéster", "Algodão orgânico"],
                      ["Linhas de nylon", "Linhas de algodão"],
                      ["Serigrafia", "Sublimação"],
                      ["Acessorios NRC", "Acessorios RC"],
                      ["Marketing Greenwashing", "marketing verde"],
                      ["Trasportadora Disel","Transportadora elétrica"]]
        step = [["Tecido", "Costura"],
                ["Estampa", "Acessorios"],
                ["Marketing", "Transporte"]]
        value = [[1, 2], [3, 4], [5, 6], [7, 8], [9, 10], [11, 12]]
        discount = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
        text = [["O poliéster é um tecido versátil e durável que pode ser usado em uma variedade de aplicações. No entanto, é importante estar ciente de suas desvantagens, como a retenção de calor e o não biodegradabilidade.", "O algodão orgânico é cultivado sem o uso de pesticidas ou fertilizantes químicos, o que reduz a poluição e o impacto no meio ambiente."],
                ["As linhas de nylon são feitas a partir de um material sintético.", "As linhas de algodão são feitas a partir de um material natural e biodegradável."],
                ["método de impressão em que uma tela com um desenho vazado é usada para transferir a tinta para o tecido. (Uso de tintas e corantes sintéticos)", "método de impressão que usa calor para transferir a tinta do papel para o tecido. (Uso de tintas e corantes naturais)"],
                ["materiais virgens,tintas e corantes sintéticos,métodos de impressão que geram resíduos", "papel reciclado para as etiquetas tintas à base de água para imprimir as etiquetas método de impressão digital para imprimir as etiquetas."],
                ["é o uso de marketing para dar a impressão de que um produto ou serviço é mais sustentável do que realmente é.", "O marketing verde é o uso de marketing para promover produtos ou serviços que são ecologicamente corretos."],
                ["O motor a diesel é um tipo de motor de combustão interna que queima diesel, um combustível fóssil derivado do petróleo.", "Usa um motor elétrico para gerar energia. O motor elétrico é um tipo de motor que converte a energia elétrica em movimento."]]
    }
                    
                                        
                                       
                                        
    
}
