//
//  ICExtras.swift
//  CrearTuPizza
//
//  Created by Esteban Gabriel Arrua Garcia on 16/4/16.
//  Copyright © 2016 Esteban Gabriel Arrua Garcia. All rights reserved.
//

import WatchKit
import Foundation


class ICExtras: WKInterfaceController {

    var pizzaDescripcion = PizzaDescripcion()
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        pizzaDescripcion = context as! PizzaDescripcion
        
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
    
    @IBAction func pressBacon(value: Bool) {
        pizzaDescripcion.extras["Bacon"] = value
    }
    
    @IBAction func pressJamon(value: Bool) {
        pizzaDescripcion.extras["Jamon"] = value
    }
    
    @IBAction func pressPepperoni(value: Bool) {
        pizzaDescripcion.extras["Pepperoni"] = value
    }
    
    @IBAction func pressPavo(value: Bool) {
        pizzaDescripcion.extras["Pavo"] = value
    }
    
    @IBAction func pressSalchicha(value: Bool) {
        pizzaDescripcion.extras["Salchicha"] = value
    }
    
    @IBAction func pressAceituna(value: Bool) {
        pizzaDescripcion.extras["Aceituna"] = value
    }
    
    @IBAction func pressCebolla(value: Bool) {
        pizzaDescripcion.extras["Cebolla"] = value
    }
    
    @IBAction func pressPimiento(value: Bool) {
        pizzaDescripcion.extras["Pimiento"] = value
    }
    
    @IBAction func pressPinia(value: Bool) {
        pizzaDescripcion.extras["Piña"] = value
    }
    
    @IBAction func pressAnchoa(value: Bool) {
        pizzaDescripcion.extras["Anchoa"] = value
    }
    
    @IBAction func pressContinuar() {
        var count = 0
        for value in pizzaDescripcion.extras.values{
            if(value){
                count += 1
            }
        }
        if(count == 0){
            pushControllerWithName("IndicadorCeroExtras", context: pizzaDescripcion)
        }else if (count > 5){
            pushControllerWithName("IndicadorMasDeCincoExtras", context: pizzaDescripcion)
        }else{
            pushControllerWithName("IndicadorExtras", context: pizzaDescripcion)
        }
        
    }

}
