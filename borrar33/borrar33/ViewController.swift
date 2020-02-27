//
//  ViewController.swift
//  borrar33
//
//  Created by usuario on 09/01/2020.
//  Copyright © 2020 usuario. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textoLabel: UILabel!
    private var var1: String = "jjj"
    let a = 8
    @IBOutlet weak var textoButton: UITextField!
    @IBOutlet weak var textoButton2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        textoLabel.text="iniciar"
        // Do any additional setup after loading the view.
    }

    @IBAction func actionButton1(_ sender: Any) {
        var string1: String = textoButton.text!
        var string2: String = textoButton2.text!
        var suma:Int? = Int(string1)! + Int(string2)!
        let xNSNumber = suma as! NSNumber
        textoLabel.text = xNSNumber.stringValue
    }
    @IBAction func actionButton2(_ sender: Any) {
        var string1: String = textoButton.text!
        var string2: String = textoButton2.text!
        var suma:Int? = Int(string1)! - Int(string2)!
        let xNSNumber = suma as! NSNumber
        textoLabel.text = xNSNumber.stringValue
    }
    @IBAction func actionButton3(_ sender: Any) {
        var string1: String = textoButton.text!
        var string2: String = textoButton2.text!
        var suma:Int? = Int(string1)! * Int(string2)!
        let xNSNumber = suma as! NSNumber
        textoLabel.text = xNSNumber.stringValue
    }
    @IBAction func actionButton4(_ sender: Any) {
        var string1: String = textoButton.text!
        var string2: String = textoButton2.text!
        var suma:Int? = Int(string1)! / Int(string2)!
        let xNSNumber = suma as! NSNumber
        textoLabel.text = xNSNumber.stringValue
    }
    
}

