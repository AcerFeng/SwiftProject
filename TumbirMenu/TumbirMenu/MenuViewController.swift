//
//  MenuViewController.swift
//  TumbirMenu
//
//  Created by LanFeng on 2016/11/26.
//  Copyright © 2016年 LanFeng. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    let transitionManager = MenuTransitionManager()
    
    @IBOutlet weak var textButton: UIButton!
    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var photoLabel: UILabel!
    
    @IBOutlet weak var quoteButton: UIButton!
    
    @IBOutlet weak var quoteLabel: UILabel!

    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var linkLabel: UILabel!
    @IBOutlet weak var chatButton: UIButton!

    @IBOutlet weak var chatLabel: UILabel!
    @IBOutlet weak var audioButton: UIButton!
    @IBOutlet weak var audioLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        transitioningDelegate = transitionManager
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
