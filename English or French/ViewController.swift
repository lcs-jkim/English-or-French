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
        
        guard let TextFieldInput = TextField.text, TextFieldInput.count > 0 else {
            ErrorMessage.text = ("Please enter your text")
            return
        }
        
    }
    
}

