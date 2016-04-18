//
//  PizzaDescripcion.swift
//  CrearTuPizza
//
//  Created by Esteban Gabriel Arrua Garcia on 16/4/16.
//  Copyright © 2016 Esteban Gabriel Arrua Garcia. All rights reserved.
//

import WatchKit

class PizzaDescripcion: NSObject {
    
    let tamanios : [String] = ["Pequeño", "Mediano", "Grande"]
    let masas : [String] = ["Delgada", "Crujiente", "Gruesa"]
    let quesos : [String] = ["Mozarela", "Chedar", "Parmesano", "Sin Queso"]
    
    var tamanio : String!
    var masa : String!
    var queso : String!
    var extras : [String : Bool] = ["Bacon" : false, "Jamon" : false, "Pepperoni" : false, "Pavo" : false, "Salchicha" : false, "Aceituna" : false, "Cebolla" : false, "Pimiento" : false, "Piña" : false, "Anchoa" : false]
    

    
    override init(){
        tamanio = tamanios[0]
        masa = masas[0]
        queso = quesos[0]
    }

}
