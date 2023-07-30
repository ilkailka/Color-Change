//
//  ViewController.swift
//  Color Change
//
//  Created by Ильмира Гамбарова on 30.07.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var mainLabel: UIView!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var redSliderValue: UILabel!
    @IBOutlet var greenSliderValue: UILabel!
    @IBOutlet var blueSliderValue: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func redValueChange() {
        redSliderValue.text = NSString(redSlider.value)
    }
    

}

