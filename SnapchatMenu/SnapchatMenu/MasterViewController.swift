//
//  MasterViewController.swift
//  SnapchatMenu
//
//  Created by lanfeng on 16/11/14.
//  Copyright © 2016年 lanfeng. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        UIApplication.shared.isStatusBarHidden = true
        
        let leftView = UIViewController()
        leftView.view.backgroundColor = UIColor.blue
        let centerView = UIViewController()
        centerView.view.backgroundColor = UIColor.yellow
        let rightView = UIViewController()
        rightView.view.backgroundColor = UIColor.black
        
        self.addChildViewController(leftView)
        self.scrollView.addSubview(leftView.view)
        leftView.didMove(toParentViewController: self)
        
        self.addChildViewController(centerView)
        self.scrollView.addSubview(centerView.view)
        centerView.didMove(toParentViewController: self)
        
        self.addChildViewController(rightView)
        self.scrollView.addSubview(rightView.view)
        rightView.didMove(toParentViewController: self)
        
        leftView.view.frame = CGRect(x: 0, y: 0, width: 335, height: self.view.frame.size.height)
        print(self.view.frame)
        centerView.view.frame = CGRect(x: self.view.frame.size.width, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height)
        
//        var rightViewFrame: CGRect = rightView.view.frame
//        rightViewFrame.origin.x = 2 * self.view.frame.width
        rightView.view.frame = CGRect(x: 2 * self.view.frame.size.width, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height)
        
        self.scrollView.contentSize = CGSize(width: self.view.frame.size.width * 3, height: self.view.frame.size.height)
        
    }
}

