//
//  VistaTamanio.swift
//  CreaTuPizza
//
//  Created by Esteban Gabriel Arrua Garcia on 3/4/16.
//  Copyright © 2016 Esteban Gabriel Arrua Garcia. All rights reserved.
//

import UIKit

class VistaTamanio: UIViewController {
    
    var tamanio : String = ""
    var arrTamanios = ["Pequeña", "Mediana", "Grande"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! VistaMasa
        sigVista.tamanio = tamanio
    }
    
    @IBAction func PressPequenia(sender: AnyObject) {
        tamanio = arrTamanios[0]
    }
    
    @IBAction func PressMediana(sender: AnyObject) {
        tamanio = arrTamanios[1]
    }
    
    @IBAction func PressGrande(sender: AnyObject) {
        tamanio = arrTamanios[2]
    }
    
    
    
}
