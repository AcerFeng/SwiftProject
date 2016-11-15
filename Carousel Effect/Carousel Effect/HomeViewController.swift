//
//  HomeViewController.swift
//  Carousel Effect
//
//  Created by lanfeng on 16/11/15.
//  Copyright © 2016年 lanfeng. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

   
    @IBOutlet weak var collectionView: UICollectionView!

    fileprivate var interests = Interest.createInterests()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    fileprivate struct Storyboard {
        static let CellIdentifier = "InterestCell"
    }
    

}

extension HomeViewController : UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return interests.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Storyboard.CellIdentifier, for: indexPath) as! InterestCollectionViewCell
        
        cell.interest = self.interests[(indexPath as NSIndexPath).item]
        
        return cell
        
    }
}
