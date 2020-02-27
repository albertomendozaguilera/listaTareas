//
//  ViewController.swift
//  Calculadora
//
//  Created by usuario on 10/01/2020.
//  Copyright © 2020 usuario. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainStack: UIStackView!
    @IBOutlet weak var allClear: UIButton!
    @IBOutlet weak var eliminar: UIButton!
    @IBOutlet weak var masMenos: UIButton!
    @IBOutlet weak var dividir: UIButton!
    @IBOutlet weak var multiplicar: UIButton!
    @IBOutlet weak var restar: UIButton!
    @IBOutlet weak var sumar: UIButton!
    @IBOutlet weak var igual: UIButton!
    @IBOutlet weak var nueve: UIButton!
    @IBOutlet weak var cuatro: UIButton!
    @IBOutlet weak var cinco: UIButton!
    @IBOutlet weak var seis: UIButton!
    @IBOutlet weak var siete: UIButton!
    @IBOutlet weak var ocho: UIButton!
    @IBOutlet weak var uno: UIButton!
    @IBOutlet weak var dos: UIButton!
    @IBOutlet weak var tres: UIButton!
    @IBOutlet weak var cero: UIButton!
    @IBOutlet weak var punto: UIButton!
    @IBOutlet weak var pantalla: UILabel!
    @IBOutlet weak var pantalla2: UILabel!
    @IBOutlet weak var pantall3: UILabel!
    
    
    var num1 :Double! = 0
    var num2 :Double! = 0
    var num3 :Double = 0
    var result = "0"
    var ope = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redondearBotones()
    }
    
    @IBAction func cero(_ sender: Any) {
        ponerNumero(numero: 0)
    }
    @IBAction func uno(_ sender: Any) {
        ponerNumero(numero: 1)
    }
    @IBAction func dos(_ sender: Any) {
        ponerNumero(numero: 2)
    }
    @IBAction func tres(_ sender: Any) {
        ponerNumero(numero: 3)
    }
    @IBAction func cuatro(_ sender: Any) {
        ponerNumero(numero: 4)
    }
    @IBAction func cinco(_ sender: Any) {
        ponerNumero(numero: 5)
    }
    @IBAction func seis(_ sender: Any) {
        ponerNumero(numero: 6)
    }
    @IBAction func siete(_ sender: Any) {
        ponerNumero(numero: 7)
    }
    @IBAction func ocho(_ sender: Any) {
        ponerNumero(numero: 8)
    }
    @IBAction func nueve(_ sender: Any) {
        ponerNumero(numero: 9)
    }
    
    
    @IBAction func sumar(_ sender: Any) {
        num1 = Double(pantalla2.text!)
        print(num1)
        print(num2)
        pantall3.text = "+"
        pantalla2.text = ""
    }
    
    @IBAction func restar(_ sender: Any) {
        num1 = Double(pantalla2.text!)
        print(num1)
        print(num2)
        pantall3.text = "-"
        pantalla2.text = ""
    }
    @IBAction func multiplicar(_ sender: Any) {
        num1 = Double(pantalla2.text!)
        print(num1)
        print(num2)
        pantall3.text = "*"
        pantalla2.text = ""
    }
    @IBAction func dividir(_ sender: Any) {
        num1 = Double(pantalla2.text!)
        print(num1)
        print(num2)
        pantall3.text = "/"
        pantalla2.text = ""
    }
    @IBAction func allClear(_ sender: Any) {
        pantalla.text = "0"
        pantalla2.text = "0"
        pantall3.text = ""
        num1 = 0
        num2 = 0
    }
    @IBAction func eliminarUno(_ sender: Any) {////////////////
        var str = pantalla2.text
        let index = str.index(before: str.endIndex)
        str[index] // ultimo
        let range = str?.startIndex..<str.index(before:str?.endIndex)>
        str[range]
    }
    @IBAction func cambiarSigno(_ sender: Any) {
    }
    
    func ponerNumero(numero: Int){
        if pantalla2.text! == "0" {
            switch numero {
                case 1:
                    pantalla2.text? = "1"
                    operaciones()
                case 2:
                    pantalla2.text? = "2"
                    operaciones()
                case 3:
                    pantalla2.text? = "3"
                    operaciones()
                case 4:
                    pantalla2.text? = "4"
                    operaciones()
                case 5:
                    pantalla2.text? = "5"
                    operaciones()
                case 6:
                    pantalla2.text? = "6"
                    operaciones()
                case 7:
                    pantalla2.text? = "7"
                    operaciones()
                case 8:
                    pantalla2.text? = "8"
                    operaciones()
                case 9:
                    pantalla2.text? = "9"
                    operaciones()
                default:
                    pantalla2.text? = "."
                    operaciones()
            }
        }else{
            switch numero {
                case 1:
                    pantalla2.text?.append("1")
                    operaciones()
                case 2:
                    pantalla2.text?.append("2")
                    operaciones()
                case 3:
                    pantalla2.text?.append("3")
                    operaciones()
                case 4:
                    pantalla2.text?.append("4")
                    operaciones()
                case 5:
                    pantalla2.text?.append("5")
                    operaciones()
                case 6:
                    pantalla2.text?.append("6")
                    operaciones()
                case 7:
                    pantalla2.text?.append("7")
                    operaciones()
                case 8:
                    pantalla2.text?.append("8")
                    operaciones()
                case 9:
                    pantalla2.text?.append("9")
                    operaciones()
                case 0:
                    pantalla2.text?.append("0")
                    operaciones()
                default:
                    pantalla2.text?.append(".")
                    operaciones()
            }
        }
    }
        func operaciones(){
            if(!pantall3.isEqual("")){
                switch pantall3.text{
                    
                    case "+":
                        num2 = Double(pantalla2.text!)
                        pantalla.text = String(num1 + num2)
                        
                    case "-":
                        num2 = Double(pantalla2.text!)
                        pantalla.text = String(num1 - num2)
                    case "*":
                        num2 = Double(pantalla2.text!)
                        pantalla.text = String(num1 * num2)
                    case "/":
                        num2 = Double(pantalla2.text!)
                        pantalla.text = String(num1 / num2)
                    default:
                        pantalla.text = ""
                }
            }else{
                pantalla.text = pantalla2.text
            }
        }
    
    
    
    func redondearBotones(){
        uno.round()
        dos.round()
        tres.round()
        cuatro.round()
        cinco.round()
        seis.round()
        siete.round()
        ocho.round()
        nueve.round()
        cero.round()
        igual.round()
        punto.round()
        allClear.round()
        eliminar.round()
        masMenos.round()
        dividir.round()
        multiplicar.round()
        restar.round()
        sumar.round()
    }
    
}

extension UIButton{
    func round(){
        layer.cornerRadius = bounds.height/10
        clipsToBounds = true
    }
}
