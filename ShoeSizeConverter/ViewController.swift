//
//  ViewController.swift
//  ShoeSizeConverter
//
//  Created by Meng Fung on 9/23/14.
//  Copyright (c) 2014 Meng Fung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var mensShowSizeTextField: UITextField!
  @IBOutlet weak var convertedShoeSizeLabel: UILabel!

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  @IBAction func convertButtonPress(sender: UIButton) {
    let intFromTextField = mensShowSizeTextField.text.toInt()!
    let conversionConstant = 30
    
    var convertedShoeSize = intFromTextField + conversionConstant
    convertedShoeSizeLabel.hidden = false
    convertedShoeSizeLabel.text = "\(convertedShoeSize) in EU Shoe Size"
  }

}