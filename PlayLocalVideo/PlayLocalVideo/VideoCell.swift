//
//  VideoCell.swift
//  PlayLocalVideo
//
//  Created by lanfeng on 16/11/14.
//  Copyright © 2016年 lanfeng. All rights reserved.
//

import UIKit

struct video {
    let image: String
    let title: String
    let source: String
}

class VideoCell: UITableViewCell {
    @IBOutlet weak var videoScreenshot: UIImageView!
    @IBOutlet weak var videoTitleLabel: UILabel!
    @IBOutlet weak var videoSourceLabel: UILabel!

}
