//
//  ICMasa.swift
//  CrearTuPizza
//
//  Created by Esteban Gabriel Arrua Garcia on 16/4/16.
//  Copyright © 2016 Esteban Gabriel Arrua Garcia. All rights reserved.
//

import WatchKit
import Foundation


class ICMasa: WKInterfaceController {

    var pizzaDescripcion = PizzaDescripcion()
    
    @IBOutlet var IOOpciones: WKInterfacePicker!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        pizzaDescripcion = context as! PizzaDescripcion
        
        var pickerItems: [WKPickerItem] = []
        for mas in pizzaDescripcion.masas {
            let item = WKPickerItem()
            item.title = mas
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

    @IBAction func cambiarMasa(value: Int) {
        pizzaDescripcion.masa = pizzaDescripcion.masas[value]
    }
    
    
    @IBAction func pressContinuar() {
        pushControllerWithName("IndicadorMasa", context: pizzaDescripcion)
    }

}
