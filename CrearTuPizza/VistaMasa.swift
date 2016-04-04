//
//  VistaMasa.swift
//  CreaTuPizza
//
//  Created by Esteban Gabriel Arrua Garcia on 3/4/16.
//  Copyright © 2016 Esteban Gabriel Arrua Garcia. All rights reserved.
//

import UIKit

class VistaMasa: UIViewController {
    
    var tamanio : String = ""
    
    var masa : String = ""
    var arrMasa = ["Delgada", "Crujiente", "Gruesa"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! VistaQueso
        sigVista.tamanio = tamanio
        sigVista.masa = masa
    }

    
    @IBAction func PressDelgada(sender: AnyObject) {
        masa = arrMasa[0]
    }
    
    @IBAction func PressCrujiente(sender: AnyObject) {
        masa = arrMasa[1]
    }
    
    @IBAction func PressGruesa(sender: AnyObject) {
        masa = arrMasa[2]
    }
    
    
}

