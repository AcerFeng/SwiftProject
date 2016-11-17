//
//  ClearTableViewCell.swift
//  ClearTableViewCell
//
//  Created by lanfeng on 16/11/17.
//  Copyright © 2016年 lanfeng. All rights reserved.
//

import UIKit

class ClearTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    let gradientLayer = CAGradientLayer()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
//        gradientLayer.frame = self.bounds
//        let color1 = UIColor(white: 1.0, alpha: 0.2).cgColor as CGColor
//        let color2 = UIColor(white: 1.0, alpha: 0.1).cgColor as CGColor
//        let color3 = UIColor.clear
//        let color4 = UIColor(white: 0.0, alpha: 0.05).cgColor as CGColor
//        
//        gradientLayer.colors = [color1, color2, color3, color4]
//        gradientLayer.locations = [0.0, 0.04, 0.95, 1.0]
//        layer.insertSublayer(gradientLayer, at: 0)
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
