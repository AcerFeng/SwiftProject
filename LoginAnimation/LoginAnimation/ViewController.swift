//
//  ViewController.swift
//  LoginAnimation
//
//  Created by lanfeng on 16/11/17.
//  Copyright © 2016年 lanfeng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func backButtonDidTouch(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var userNameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var centerAlignUsername: NSLayoutConstraint!
    @IBOutlet weak var centerAlignPassword: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        userNameField.layer.cornerRadius = 6
        passwordField.layer.cornerRadius = 6
        loginButton.layer.cornerRadius = 5
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        centerAlignUsername.constant -= self.view.bounds.width
        centerAlignPassword.constant -= self.view.bounds.width
        loginButton.alpha = 0
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 0.5) {
            self.centerAlignUsername.constant += self.view.bounds.width
            self.view.layoutIfNeeded()
        }
        
        UIView.animate(withDuration: 0.5, delay: 0.1, options: UIViewAnimationOptions.curveEaseOut, animations: {
            self.centerAlignPassword.constant += self.view.bounds.width
            self.view.layoutIfNeeded()
            }, completion: nil)
        
        let bounds = loginButton.bounds
        UIView.animate(withDuration: 0.2, delay: 0.2, options: .curveEaseOut, animations: {
            self.loginButton.alpha = 1
            self.loginButton.bounds = CGRect(x: bounds.origin.x - 20, y: bounds.origin.y - 10, width: bounds.size.width + 40, height: bounds.size.height + 20)
            }, completion: { (finished) -> Void in
                UIView.animate(withDuration: 0.2, animations: {
                    self.loginButton.isEnabled = true
                    self.loginButton.bounds = bounds
                })
        })
    }

    @IBAction func loginbuttonDidTouch(_ sender: AnyObject) {
        let bounds = loginButton.bounds
        
        UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveLinear, animations: {
            self.loginButton.bounds = CGRect(x: bounds.origin.x - 20, y: bounds.origin.y - 10, width: bounds.size.width + 40, height: bounds.size.height + 20)
            }, completion: { finished in
                UIView.animate(withDuration: 0.2, animations: {
                    self.loginButton.isEnabled = true
                    self.loginButton.bounds = bounds
                })
        })
    }
    

}
