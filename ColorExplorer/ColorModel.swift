//
//  ColorModel.swift
//  ColorExplorer
//
//  Created by Christopher Andrews on 3/7/17.
//  Copyright © 2017 Christopher Andrews. All rights reserved.
//

import Foundation
import UIKit

class ColorModel{
    
    var red:Float = 0.0
    var green:Float = 0.0
    var blue:Float = 0.0
    
    
    var uiColor: UIColor{
        return  UIColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: 1)
        
    }
    
    var hexString:String {
        return String(format: "%02X%02X%02X", Int(red*255), Int(green*255), Int(255*blue))
    }
    
    
}
