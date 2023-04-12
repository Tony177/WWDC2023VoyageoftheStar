//
//  helperSwiftUI.swift
//  Voyage of the Star
//
//  Created by Antonio Avolio on 02/04/23.
//

import SwiftUI

let sizeLimitWidth : CGFloat = 900

extension Float {
    func removeZerosFromEnd() -> String {
        let formatter = NumberFormatter()
        let number = NSNumber(value: self)
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 4 //maximum digits in Double after dot (maximum precision)
        return String(formatter.string(from: number) ?? "")
    }
}

extension Float {
    func formatAge() -> String {
        if (self/1000.0 > 1.0) {
            let num = (self/1000.0).removeZerosFromEnd()
            return "\(num) billion"
        } else {
            return "\(self.removeZerosFromEnd()) milion"
        }
    }
}
