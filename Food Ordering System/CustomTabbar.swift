//
//  CustomTabbar.swift
//  Food Ordering System
//
//  Created by Immani, Vamsi (ES) on 12/19/18.
//  Copyright © 2018 Immani, Vamsi (ES). All rights reserved.
//

import UIKit

class CustomTabbar: UITabBar {

    let kTabBarHeight = 50
    
    override func draw(_ rect: CGRect) {
        
    }
 
    override func sizeThatFits(_ size: CGSize) -> CGSize {
        var sizeThatFits = super .sizeThatFits(size)
        sizeThatFits.height = CGFloat(kTabBarHeight)
        
        return sizeThatFits;
    }

}
