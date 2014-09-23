//
//  ViewController.swift
//  ShoeSizeConverter
//
//  Created by Meng Fung on 9/23/14.
//  Copyright (c) 2014 Meng Fung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  // Mens shoes
  @IBOutlet weak var mensShoeSizeTextField: UITextField!
  @IBOutlet weak var convertedShoeSizeLabel: UILabel!

  // Womens shoes
  @IBOutlet weak var womensShoeSizeTextField: UITextField!
  @IBOutlet weak var convertedWomensShoeSizeLabel: UILabel!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  @IBAction func convertButtonPress(sender: UIButton) {
    let intFromTextField = mensShoeSizeTextField.text.toInt()!
    let conversionConstant = 30
    
    var convertedShoeSize = intFromTextField + conversionConstant
    convertedShoeSizeLabel.hidden = false
    convertedShoeSizeLabel.text = "\(convertedShoeSize) in EU Shoe Size"
  }
  @IBAction func convertWomensButtonPress(sender: UIButton) {
    let sizeFromTextField = NSString(string: womensShoeSizeTextField.text).doubleValue
    let conversionConstant = 30.5
    
    var convertedShoeSize = sizeFromTextField + conversionConstant
    convertedWomensShoeSizeLabel.hidden = false
    convertedWomensShoeSizeLabel.text = "\(convertedShoeSize) in EU Shoe Size"
  }

}