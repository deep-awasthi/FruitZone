//
//  ImageData.swift
//  FruitZone
//
//  Created by Deep Awasthi on 21/5/24.
//

import Foundation
import SwiftUI

struct fruitModel {
    var id: Int
    var title: fruitTitle
    var image: String
    var price: String
    var color: String
}

enum fruitTitle: String {
    case apple, apricot, avocado, banana, blackberry, cherry, dragonfruit, fig, grapes, kiwi, lemon, mango, muskmelon, orange, papaya, pear, pineapple, plum, raspberry, strawbery, watermelon
}
