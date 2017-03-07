//
//  UIBarButtonItem+category.swift
//  Restaurant
//
//  Created by lance017 on 2017/3/3.
//  Copyright © 2017年 lance017. All rights reserved.
//

import UIKit

extension UIBarButtonItem{
    
    /// 创建UIBarButtonItem
    convenience init(title : String , fontSize : CGFloat = 16, target: AnyObject? , action: Selector, isBackButton : Bool = false) {
        
        let btn: UIButton = UIButton.init(title: title, fontsize: fontSize, normalColor: UIColor.darkGray, highlightedColor: UIColor.orange)
        
        if isBackButton {
            let imageName = "navigationbar_back_withtext"
            btn.setImage(UIImage(named: imageName), for: .normal)
            btn.setImage(UIImage(named: imageName + "_highlighted"), for: .highlighted)
            
            btn .sizeToFit()
        }

        btn.addTarget(target, action: action, for: .touchUpInside)
        
        //self.init 实例化 UIBarButtonItem
        self.init(customView: btn)
        
    }
}
