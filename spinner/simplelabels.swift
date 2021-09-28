//
//  simplelabels.swift
//  list
//
//  Created by Vachet Ghislain on 23/09/2021.
//

import SwiftUI

struct Choice: Identifiable {
    var id = UUID()
    var nomIcone : String
    var nomImage : String
    var message : String
    
}

let simpleData = [
            Choice(nomIcone: "1.circle.fill", nomImage: "iphone", message: "Choisissez un restaurant"),
            Choice(nomIcone: "2.circle.fill", nomImage: "list.bullet", message: "Composez votre numéro"),
            Choice(nomIcone: "3.circle.fill", nomImage: "creditcard", message: "Dégustez au restaurant")
]
