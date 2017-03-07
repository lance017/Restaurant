//
//  UIButton+Category.swift
//  Restaurant
//
//  Created by lance017 on 2017/2/28.
//  Copyright © 2017年 lance017. All rights reserved.
//

import UIKit

extension UIButton {
    
    
    
    convenience init(title :String, fontsize : CGFloat = 16, normalColor : UIColor, highlightedColor : UIColor, backgroundImageName : String, highlightedBackgroundImageName : String) {
        
        self.init(type:.custom)
        
        self.setTitle(title, for: .normal)
        
        self.setTitleColor(normalColor, for: .normal)
        self.setTitleColor(highlightedColor, for: .highlighted)
        
        self.titleLabel?.font = UIFont.systemFont(ofSize: fontsize)
        
        if !backgroundImageName.isEmpty {
            self.setBackgroundImage(UIImage(named: backgroundImageName), for: .normal)
            if !highlightedBackgroundImageName.isEmpty {
                self.setBackgroundImage(UIImage(named: highlightedBackgroundImageName), for: .highlighted)
            } else {
                self.setBackgroundImage(UIImage(named: backgroundImageName), for: .highlighted)
            }
        }
        
        self.sizeToFit()
        
    }
    
    convenience init(title :String, fontsize : CGFloat = 16, normalColor : UIColor, highlightedColor : UIColor) {
        self.init(title: title, fontsize: fontsize, normalColor: normalColor, highlightedColor: highlightedColor, backgroundImageName: "", highlightedBackgroundImageName: "")
    }
    
    
}
