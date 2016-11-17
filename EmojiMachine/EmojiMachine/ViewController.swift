//
//  ViewController.swift
//  EmojiMachine
//
//  Created by lanfeng on 16/11/17.
//  Copyright © 2016年 lanfeng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emojiPickerView: UIPickerView!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func goButtonDidTouch(_ sender: AnyObject) {
        emojiPickerView.selectRow(Int(arc4random()) % 90 + 3, inComponent: 0, animated: true)
        emojiPickerView.selectRow(Int(arc4random()) % 90 + 3, inComponent: 1, animated: true)
        emojiPickerView.selectRow(Int(arc4random()) % 90 + 3, inComponent: 2, animated: true)
        
        if (dataArray1[emojiPickerView.selectedRow(inComponent: 0)] == dataArray2[emojiPickerView.selectedRow(inComponent: 1)] &&
            dataArray1[emojiPickerView.selectedRow(inComponent: 0)] == dataArray3[emojiPickerView.selectedRow(inComponent: 2)]) {
            resultLabel.text = "Bingo!"
        } else {
            resultLabel.text = "💔"
        }
    }
    
    var imageArray = [String]()
    var dataArray1 = [Int]()
    var dataArray2 = [Int]()
    var dataArray3 = [Int]()

    override func viewDidLoad() {
        super.viewDidLoad()
        imageArray = ["🐶", "🐵", "🦄", "😂", "🎨", "🤖", "🍟", "🐼", "🚖", "🐷"]
        for _ in 0 ..< 100 {
            dataArray1.append((Int)(arc4random() % 10))
            dataArray2.append((Int)(arc4random() % 10))
            dataArray3.append((Int)(arc4random() % 10))
            
        }
        
        resultLabel.text = ""
    }
}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    // MARK: -UIPickerViewDelegate
    public func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        return 100.0
    }
    
    
    public func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 100.0
    }
    
    public func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let pickerLabel = UILabel()
        if component == 0 {
            pickerLabel.text = imageArray[(Int)(dataArray1[row])]
        } else if component == 1 {
            pickerLabel.text = imageArray[(Int)(dataArray2[row])]
        } else {
            pickerLabel.text = imageArray[(Int)(dataArray3[row])]
        }
        
        pickerLabel.font = UIFont(name: "Apple Color Emoji", size: 80)
        pickerLabel.textAlignment = NSTextAlignment.center
        
        return pickerLabel
    }
    
    // MARK: -UIPickerViewDataSource
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 100
    }
}
