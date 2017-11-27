//
//  Flyable.swift
//  BenPratt_CSP
//
//  Created by Pratt, Benjamin on 11/20/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import Foundation
public protocol Flyable{
    
    var isFlying: Bool{get set}
    func fly()
    func land()
    func getIsFlying() -> Bool
}
