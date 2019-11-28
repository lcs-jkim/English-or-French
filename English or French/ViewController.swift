//
//  ViewController.swift
//  English or French
//
//  Created by Kim, Jenis on 2019-11-26.
//  Copyright © 2019 Kim, Jenis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    //MARK: Properties
    @IBOutlet weak var TextField: UITextField!
    @IBOutlet weak var ErrorMessage: UILabel!
    @IBOutlet weak var AnswerBox: UILabel!
    
    @IBAction func Analyze(_ sender: Any) {
        
        // Clear the error and answer box
        
        AnswerBox.text = ""
        ErrorMessage.text = ""
        
        // Guard against bad user input
        guard let TextFieldInput = TextField.text, TextFieldInput.count > 0, TextFieldInput.count < 225 else {
            ErrorMessage.text = ("Please enter a text text to analyze")
            return
        }
        
        // Resets the T and S counters
        var TCounter = 0
        
        var SCounter = 0
        
        // Loop that finds the scalars of the characters and searches for T and S
        for scalar in TextFieldInput.unicodeScalars {
            let scalar = scalar.value
            
            switch scalar {
            case 84:
                TCounter += 1
            case 116:
                TCounter += 1
            case 83:
                SCounter += 1
            case 115:
                SCounter += 1
            default:
                break
            }
            
            // Analysis the results and puts it on the screen 
            if TCounter > SCounter {
                AnswerBox.text = ("This looks like English")
            } else if SCounter > TCounter {
                AnswerBox.text = ("This looks like French")
            } else {
                AnswerBox.text = ("This looks like French")
            }
            
        }
        
    }
    
}

