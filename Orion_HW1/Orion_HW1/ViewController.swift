//
//  ViewController.swift
//  Orion_HW1
//
//  Created by Даниил Алексеев on 25.06.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var refreshButton: UIButton!
    @IBOutlet weak var textField: UITextField!
    
    var a: Int = 0
    var b: Int? = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        refreshButton.isHidden = true
        a = Int.random(in: 0..<101)
    }
    
    @IBAction func chechButton(_ sender: Any) {
        checkСoincidence()
    }
    @IBAction func refresh(_ sender: Any) {
        refresh()
    }
    
    func checkСoincidence(){
        b = Int(textField.text ?? "0")
        if b ?? 0 > a {
            resultLabel.text = "Много"
        }else if b ?? 0 < a {
            resultLabel.text = "Мало"
        } else{
            resultLabel.text = "Угадали!"
            refreshButton.isHidden = false
        }
    }
    
    func refresh(){
        textField.text = ""
        resultLabel.text = "Угадайте"
        a = Int.random(in: 0..<101)
        refreshButton.isHidden = true
    }
}

