//
//  VistaQueso.swift
//  CrearTuPizza
//
//  Created by Esteban Gabriel Arrua Garcia on 3/4/16.
//  Copyright © 2016 Esteban Gabriel Arrua Garcia. All rights reserved.
//

import UIKit

class VistaQueso: UIViewController {
    
    var tamanio : String = ""
    var masa : String = ""
    
    var queso : String = ""
    var arrQueso = ["Muzarela", "Chedar", "Parmezano", "Sin Queso"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! VistaExtras
        sigVista.tamanio = tamanio
        sigVista.masa = masa
        sigVista.queso = queso
    }

    @IBAction func PressMuzarela(sender: AnyObject) {
        queso = arrQueso[0]
    }
    
    @IBAction func PressChedar(sender: AnyObject) {
        queso = arrQueso[1]
    }
    
    @IBAction func PressParmezano(sender: AnyObject) {
        queso = arrQueso[2]
    }
    
    @IBAction func PressSinQueso(sender: AnyObject) {
        queso = arrQueso[3]
    }

    
}
