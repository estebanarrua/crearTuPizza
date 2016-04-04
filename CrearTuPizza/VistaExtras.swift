//
//  VistaExtras.swift
//  CrearTuPizza
//
//  Created by Esteban Gabriel Arrua Garcia on 3/4/16.
//  Copyright © 2016 Esteban Gabriel Arrua Garcia. All rights reserved.
//

import UIKit

class VistaExtras: UIViewController {
    
    var tamanio : String = ""
    var masa : String = ""
    var queso : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! VistaConfirmar
        sigVista.tamanio = tamanio
        sigVista.masa = masa
        sigVista.queso = queso
        sigVista.extras = extras
    }
    
    
    var extras : [String] = [];
    
    @IBOutlet weak var PickBacon: UISwitch!
    @IBOutlet weak var PickJamon: UISwitch!
    @IBOutlet weak var PickPepperoni: UISwitch!
    @IBOutlet weak var PickPavo: UISwitch!
    @IBOutlet weak var PickSalchicha: UISwitch!
    @IBOutlet weak var PickAceituna: UISwitch!
    @IBOutlet weak var PickCebolla: UISwitch!
    @IBOutlet weak var PickPimiento: UISwitch!
    @IBOutlet weak var PickPinia: UISwitch!
    @IBOutlet weak var PickAnchoa: UISwitch!
    
    
    @IBAction func PressAceptarExtras(sender: AnyObject) {
        extras = []
        if (PickBacon.on){
            extras.append("Bacon")
        }
        if (PickJamon.on){
            extras.append("Jamón")
        }
        if (PickPepperoni.on){
            extras.append("Pepperoni")
        }
        if (PickPavo.on){
            extras.append("Pavo")
        }
        if (PickSalchicha.on){
            extras.append("Salchicha")
        }
        if (PickAceituna.on){
            extras.append("Aceituna")
        }
        if (PickCebolla.on){
            extras.append("Cebolla")
        }
        if (PickPimiento.on){
            extras.append("Pimiento")
        }
        if (PickPinia.on){
            extras.append("Pinia")
        }
        if (PickAnchoa.on){
            extras.append("Anchoa")
        }
    }


}
