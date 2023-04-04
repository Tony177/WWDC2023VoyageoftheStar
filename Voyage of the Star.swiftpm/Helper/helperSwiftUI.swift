//
//  helperSwiftUI.swift
//  Voyage of the Star
//
//  Created by Antonio Avolio on 02/04/23.
//

import SwiftUI

extension Float {
    func removeZerosFromEnd() -> String {
        let formatter = NumberFormatter()
        let number = NSNumber(value: self)
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 4 //maximum digits in Double after dot (maximum precision)
        return String(formatter.string(from: number) ?? "")
    }
}
