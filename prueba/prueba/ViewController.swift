//
//  ViewController.swift
//  prueba
//
//  Created by dani on 09/01/2020.
//  Copyright © 2020 dani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - Outlets
    
    var memoria: Double = 0
    var resultado: Double = 0
    var ft: Bool = true
    var numeroAnterior: Double = 0
    var operacion = 0
    
    @IBOutlet weak var bt_num1: UIButton!
    @IBOutlet weak var bt_num2: UIButton!
    @IBOutlet weak var lb_pantalla: UILabel!
    @IBOutlet weak var lb_operacion: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        bt_num2.tag=2
//        print(bt_num2.tag)
        
        
    }

    
    @IBAction func numeroPressed (_ sender : Any){
        let tag = (sender as! UIButton).tag
        
        if((String(lb_pantalla.text!)=="0") || (String(lb_pantalla.text!)=="0.0")){
                        lb_pantalla.text = String(tag)
    
                    }else{
                       
                       lb_pantalla.text = String(lb_pantalla.text!) + String(tag)
                   }
        
        
    }
    
    
    
    
    
    
    @IBAction func suma (_ sender : Any){
        if(ft == true){
            operacion = 1
        }
        numeroAnterior=Double(lb_pantalla.text!)!
        if(String(lb_operacion.text!)==""){
            lb_operacion.text = " " + String(numeroAnterior) + " +"
        }else{
          lb_operacion.text = String(lb_operacion.text!) + String(numeroAnterior) + " +"
        }
        
        lb_pantalla.text=""
        
        
        switch operacion{
        case 1: // +
            resultado = resultado + numeroAnterior
        case 2: // -
            resultado = resultado - numeroAnterior
        default:
            print("default")
        }
       ft = false
       operacion = 1
    
    }
    
    @IBAction func resta (_ sender : Any){
        if(ft == true){operacion = 2}
        numeroAnterior=Double(lb_pantalla.text!)!
        if(String(lb_operacion.text!)==""){
            lb_operacion.text = " " + String(numeroAnterior) + " -"
        }else{
          lb_operacion.text = String(lb_operacion.text!) + String(numeroAnterior) + " -"
        }
        
        lb_pantalla.text=""
        
        
        switch operacion{
        case 1: // +
            resultado = resultado + numeroAnterior
        case 2: // -
            if(ft){
              resultado = numeroAnterior - resultado
            }else{
              resultado = resultado - numeroAnterior
            }
        default:
            print("default")
        }
       ft = false
       operacion = 2
    
    }
    
    
   
    
    
    
    
    @IBAction func operacionPressed(_ sender: Any) {
        
        let tag = (sender as! UIButton).tag
        
//        if(lb_operacion.text!.last == "+"){
//            resultado = resultado + Double(lb_pantalla.text!)!
//            print(resultado)
//            print("Hola")
//        }
        
        
        
        
        
        switch tag {
        
            
        case 15: // =
            ft = true
            switch operacion {
            case 1: // +
                resultado = resultado + Double(lb_pantalla.text!)!
                
                lb_pantalla.text = String(resultado)
                memoria = resultado
                resultado = 0
                lb_operacion.text = ""
            case 2: // -
            resultado = resultado - Double(lb_pantalla.text!)!
            
            lb_pantalla.text = String(resultado)
            memoria = resultado
            resultado = 0
            lb_operacion.text = ""
            default:
                print("default")
            }
            
        case 16: // AC
            
            
            numeroAnterior=0
            operacion=0
            lb_operacion.text=""
            lb_pantalla.text="0"
        case 17: // ANS
            lb_pantalla.text=String(memoria)
            
        case 20: // .
            if(!lb_pantalla.text!.contains(".")){
                lb_pantalla.text = String(lb_pantalla.text!) + "."
            }
            
            
        default:
            print("default")
        }
        
        
    }
    
}
