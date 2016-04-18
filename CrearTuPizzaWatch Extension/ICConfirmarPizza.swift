//
//  ICConfirmarPizza.swift
//  CrearTuPizza
//
//  Created by Esteban Gabriel Arrua Garcia on 17/4/16.
//  Copyright © 2016 Esteban Gabriel Arrua Garcia. All rights reserved.
//

import WatchKit
import Foundation


class ICConfirmarPizza: WKInterfaceController {

    var pizzaDescripcion = PizzaDescripcion()
    
    @IBOutlet var IOTamanio: WKInterfaceLabel!
    @IBOutlet var IOQueso: WKInterfaceLabel!
    @IBOutlet var IOMasa: WKInterfaceLabel!
    @IBOutlet var IOEstras: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        pizzaDescripcion = context as! PizzaDescripcion
        
        IOTamanio.setText(pizzaDescripcion.tamanio)
        IOMasa.setText(pizzaDescripcion.masa)
        IOQueso.setText(pizzaDescripcion.queso)
        var extras = ""
        for (key , value) in pizzaDescripcion.extras{
            if(value){
                extras += "\(key)\n"
            }
        }
        IOEstras.setText(extras)
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
