//
//  Extension.swift
//  TabbarTutorial
//
//  Created by Syed Qasim on 21/05/2020.
//  Copyright © 2020 Syed Qasim. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
@IBInspectable var viewCornerRadius :CGFloat {
    
    get {
        return layer.cornerRadius
    }
    
    set {
        
        layer.cornerRadius = newValue
        layer.masksToBounds = newValue > 0
    }
}
}
