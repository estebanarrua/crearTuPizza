//
//  ICQueso.swift
//  CrearTuPizza
//
//  Created by Esteban Gabriel Arrua Garcia on 16/4/16.
//  Copyright © 2016 Esteban Gabriel Arrua Garcia. All rights reserved.
//

import WatchKit
import Foundation


class ICQueso: WKInterfaceController {

    var pizzaDescripcion = PizzaDescripcion()

    @IBOutlet var IOOpciones: WKInterfacePicker!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        pizzaDescripcion = context as! PizzaDescripcion
        
        var pickerItems: [WKPickerItem] = []
        for que in pizzaDescripcion.quesos {
            let item = WKPickerItem()
            item.title = que
            pickerItems.append(item)
        }
        
        self.IOOpciones.setItems(pickerItems)
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

    @IBAction func cambiarQueso(value: Int) {
        pizzaDescripcion.queso = pizzaDescripcion.quesos[value]
    }
    
    @IBAction func pressContinuar() {
         pushControllerWithName("IndicadorQueso", context: pizzaDescripcion)
    }
}
