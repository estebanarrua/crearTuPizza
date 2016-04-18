//
//  ICTamanio.swift
//  CrearTuPizza
//
//  Created by Esteban Gabriel Arrua Garcia on 16/4/16.
//  Copyright © 2016 Esteban Gabriel Arrua Garcia. All rights reserved.
//

import WatchKit
import Foundation


class ICTamanio: WKInterfaceController {

    let pizzaDescripcion = PizzaDescripcion()
    
    @IBOutlet var IOOpciones: WKInterfacePicker!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        
        var pickerItems: [WKPickerItem] = []
        for tam in pizzaDescripcion.tamanios {
            let item = WKPickerItem()
            item.title = tam
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
    
    @IBAction func cambioTamanio(value: Int) {
        pizzaDescripcion.tamanio = pizzaDescripcion.tamanios[value]
    }
    
    @IBAction func pressContinuar() {
        pushControllerWithName("IndicadorTamanio", context: pizzaDescripcion)
    }

}
