//
//  ViewController.swift
//  Color Change
//
//  Created by Ильмира Гамбарова on 30.07.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var mainLabel: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redSliderValue: UILabel!
    @IBOutlet var greenSliderValue: UILabel!
    @IBOutlet var blueSliderValue: UILabel!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        mainLabel.layer.cornerRadius = 10
    }

    // MARK: - IB Actions
    @IBAction func redValueChange() {
        redSliderValue.text = String(format: "%.2f", redSlider.value)
        labelColorChange()
    }
    
    @IBAction func greenValueChange() {
        greenSliderValue.text = String(format: "%.2f", greenSlider.value)
        labelColorChange()
    }
    
    @IBAction func blueValueChange() {
        blueSliderValue.text = String(format: "%.2f", blueSlider.value)
        labelColorChange()
    }
    
    // MARK: - Private Methods
    private func labelColorChange() {
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        mainLabel.backgroundColor = color
    }
}

