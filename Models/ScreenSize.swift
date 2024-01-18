//
//  File.swift
//  
//
//  Created by Arthur Liberal De Souza on 10/01/24.
//

import Foundation
import UIKit

// Classe com as dimensoes do dispositivo, ela deve ser usada para que os elementos posicionados fiquem responsivos com diferentes iPads.

let screenSize = ScreenSize.shared

class ScreenSize{
    
    static let shared = ScreenSize() 
    
    let width: CGFloat
    let heigth: CGFloat
    let maxLength: CGFloat
    let minLength: CGFloat
    
    private init() {
        width = UIScreen.main.bounds.width
        heigth = UIScreen.main.bounds.height
        maxLength = max(width, heigth)
        minLength = min(width, heigth)
    }
    
}
