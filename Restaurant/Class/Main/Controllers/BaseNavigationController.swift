//
//  BaseNavigationController.swift
//  Restaurant
//
//  Created by lance017 on 2017/2/28.
//  Copyright © 2017年 lance017. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationBar.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    //重写了 push 方法，在里面判断 title
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
        if childViewControllers.count > 0 {
            
            viewController.hidesBottomBarWhenPushed = true
            
            if let vc = viewController as? BaseViewController {
                
                title = childViewControllers.first?.title ?? "返回"
                
                if title!.characters.count > 2 {
                    
                    title = "返回"
                    
                }
                
                vc.navItem.backBarButtonItem = UIBarButtonItem(title: title!, fontSize: 16.0, target: self, action: #selector(popToParent), isBackButton: true)
                
            }
        }
        super.pushViewController(viewController, animated: true)
        
    }

    @objc fileprivate func popToParent(){
        
        popViewController(animated: true)
        
    }
    
}
