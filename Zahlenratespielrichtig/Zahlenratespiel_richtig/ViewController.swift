//
//  ViewController.swift
//  Zahlenratespiel_richtig
//
//  Created by Jana-Sophie Dannhofer on 14.10.21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    var zahl = 0
    //let number = Int.random(in: 0..<100)
    @IBOutlet weak var numberfield: UITextField!
    var finish : Bool!
    
    var model = Model()
    
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        model.newGame()
    }
    
    @IBAction func Press(_ sender: Any) {
        //let imputInt = Int(numberfield.text!)!
        
        var response = ""
        switch compareTo(){
        case -1 :
            response = "Die gesuchte Zahl ist kleiner"
        case 1 :
            response = "Die gesuchte Zahl ist größer"
        default :
            response = ""
        }
        label.text = response
        
        print(model.number)
        
        /* zahl = zahl + 1;
        let x = Int(numberfield.text!)!
        
        if x == model.number {
            label.text = " Super du hast die Zahl mit \(zahl) Versuchen erraten" ;
            finish = true
        }else if x > model.number {
            label.text = "Die gesuchte Zahl ist kleiner"
        }else {
            label.text = "Die gesuchte Zahl ist größer"
        }
        
        */
    }
    
    func compareTo()->Int!{
        let imputInt = Int(numberfield.text!)!
        return model.compareTo(guess: imputInt)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
    return compareTo() == 0
        
    }
   
    @IBAction func onEditingChange(_ sender: Any) {
        button.
    }
    
    
    
    
}

