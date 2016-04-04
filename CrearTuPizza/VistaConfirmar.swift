//
//  VistaConfirmar.swift
//  CrearTuPizza
//
//  Created by Esteban Gabriel Arrua Garcia on 3/4/16.
//  Copyright © 2016 Esteban Gabriel Arrua Garcia. All rights reserved.
//

import UIKit

class VistaConfirmar: UIViewController {
    
    var tamanio : String = ""
    var masa : String = ""
    var queso : String = ""
    var extras : [String] = []
    
    @IBOutlet weak var TuPizza: UITextView!
    @IBOutlet weak var EnviarCocina: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        if(extras.count == 0){
            EnviarCocina.enabled = false
            TuPizza.text = "Debe elegir por lo menos un extra."
        }else if(extras.count > 5){
            EnviarCocina.enabled = false
            TuPizza.text = "No puede seleccionar mas de un extra."
        }else{
            var extrasString = ""
            for extra in extras{
                extrasString += "\(extra) "
            }
            TuPizza.text = "Tamanio: \(tamanio)\n Masa: \(masa)\n Queso: \(queso)\n Extras: \(extrasString)"
        }
        
        
    }
    

}
