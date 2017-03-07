//
//  BaseViewController.swift
//  Music
//
//  Created by WangPengHui on 16/10/26.
//  Copyright © 2016年 美鲜冻品商城. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    /// 自定义导航条
    lazy var navigationBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: 64))
    /// 自定义的导航条目 -- 以后设置导航栏内容,统一使用 navItem
    lazy var navItem = UINavigationItem()
    ///重写title的set方法
    override var title: String? {
        didSet {
            navItem.title = title
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ///创建UI
        initUI()
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }

}

extension BaseViewController {
    fileprivate func initUI() {
        
        self.view.backgroundColor = UIColor.white
        
        self.automaticallyAdjustsScrollViewInsets = false
        
        initNavigationBar()
    }
    
    /// 设置导航条
    private func initNavigationBar(){
        //添加导航条
        view.addSubview(self.navigationBar)
        //将item设置给bar
        self.navigationBar.items = [self.navItem]
        //设置navBar 整个bar背景的渲染颜色 (解决铺设动画右上角 有瞬间空白的问题,原因是系统导航栏的透明度太高)
        self.navigationBar.barTintColor = UIColor(rgb: 0xF6F6F6)
        //设置navBar的额字体颜色
        self.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.darkGray]
        //设置系统按钮的文字的渲染颜色
        self.navigationBar.tintColor = UIColor.orange
    }
}
