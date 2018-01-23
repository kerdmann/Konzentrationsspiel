//
//  Karte.swift
//  Konzentrationsspiel
//
//  Created by mac mini20 on 16.01.18.
//  Copyright © 2018 mac mini20. All rights reserved.
//

import Foundation
struct Karte {
    var istOffen = false
    var istGefunden = false
    var idNummer: Int
    static var idFabrik = 0
    
    init(){
        idNummer = Karte.idFabrik
        Karte.idFabrik += 1
    }
}
