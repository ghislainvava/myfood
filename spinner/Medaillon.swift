//
//  medaillon.swift
//  list
//
//  Created by Vachet Ghislain on 23/09/2021.
//

import SwiftUI

struct Medaillon: Identifiable {
    var id = UUID()
    var restaurant : String
    var lieu : String
    var imageResto : String { return restaurant}
}

let testData = [
    Medaillon( restaurant: "La note enchantée", lieu: "Charonne"),
    Medaillon(restaurant: "La palette du goût", lieu: "ménilmontant"),
    Medaillon( restaurant: "À la française", lieu: "Cité Rouge"),
    Medaillon(restaurant: "Le délice des sens", lieu: "Folie-Méricourt")
]


