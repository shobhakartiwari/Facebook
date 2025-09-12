//
//  Calculator.swift
//  Facebook
//
//  Created by Shobhakar Tiwari on 8/15/25.
//

import Foundation

struct Calculator {
    func sum(_ a: Double, _ b: Double) -> Double {
        return a + b
    }
    
    func sub(a: Double, b: Double) -> Double {
        return a - b
    }
    
    func multiply(a: Double, b: Double) -> Double {
        return a * b
    }
    
    func divide(a: Double, b: Double) -> Double {
        if b == 0 {
            return 0
        }
        return a / b
    }
}
