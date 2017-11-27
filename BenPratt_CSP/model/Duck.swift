//
//  Duck.swift
//  BenPratt_CSP
//
//  Created by Pratt, Benjamin on 11/20/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import Foundation
public class Duck: Flyable{
    
    public var isFlying: Bool
    
    public init(){
        self.isFlying = false;
    }
    
    public func fly(){
        self.isFlying = true;
    }
    
    public func land(){
        self.isFlying = false;
    }
    
    public func getIsFlying() -> Bool{
        return self.isFlying
    }
    
}
