//
//  TipBrain.swift
//  Tipsy
//
//  Created by Anas Salah on 30/07/2024.
//

import Foundation

struct TipBrain {
    
    var totalBillAfterTip = 0.0
    
    mutating func calcBillPerPerson(tip: Int, spiltCount: Int, totalBill: Double) -> Double {
        var ans = 0.0
        
        if tip != 0 {
            //totalBillAfterTip = totalBill + (totalBill * Double(tip / 100)) // lol got inf
            totalBillAfterTip = totalBill + (totalBill * Double(tip) / 100.0)

        } else {
            totalBillAfterTip = totalBill
        }
        
        ans = totalBillAfterTip / Double(spiltCount)
        
        return ans
    }
}
