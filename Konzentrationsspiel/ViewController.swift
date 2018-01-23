//
//  ViewController.swift
//  Konzentrationsspiel
//
//  Created by mac mini20 on 11.01.18.
//  Copyright © 2018 mac mini20. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let emoji = ["🐯","🐸","🦊","🐶","🐤","🐷"]
    @IBOutlet var Buttons: [UIButton]!
    var Spiel = LogikMemorie(AnzahlButtons: 12)
    @IBOutlet weak var antwortlabel: UILabel!
    @IBAction func knopfStart(_ sender: UIButton) {
        print (Buttons.index(of: sender)!)
        Spiel.eineKarteWurdeUmgedreht(Kartennummer: Buttons.index(of: sender)!)
        anzeigen()
        
    }
    func anzeigen(){
        for index in Buttons.indices {
            
            if Spiel.KartenPassendZuButtons[index].istOffen{
                Buttons[index].setTitle(emoji[Spiel.KartenPassendZuButtons[index].idNummer], for: UIControlState.normal)
                Buttons[index].backgroundColor = #colorLiteral(red: 1, green: 0.1737732714, blue: 0.1263014129, alpha: 1)
            } else if Spiel.KartenPassendZuButtons[index].istGefunden {
                Buttons[index].setTitle("", for: UIControlState.normal)
                Buttons[index].backgroundColor = #colorLiteral(red: 0.9801074636, green: 0.5800330383, blue: 1, alpha: 0)
            } else {
                Buttons[index].setTitle("😡", for: UIControlState.normal)
                Buttons[index].backgroundColor = #colorLiteral(red: 0.9801074636, green: 0.5800330383, blue: 1, alpha: 1)
            }
            
        }
    }


}

