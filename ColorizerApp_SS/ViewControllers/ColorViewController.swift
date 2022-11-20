//
//  ViewController.swift
//  ColorizerApp_SS
//
//  Created by MacBook Air 13 on 19.11.2022.
//

import UIKit

class ColorViewController: UIViewController {
    
    // MARK: - IB Outlets
 

    @IBOutlet var colorizedView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    @IBOutlet var alphaLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var alpfaSlider: UISlider!
    
    // MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        colorizedView.layer.cornerRadius = 20
        setLabelValues()
        setSliderColors()
    }
    
    // MARK: - IB Actions
    @IBAction func sliderAction(_ sender: Any) {
        
        setLabelValues()
        setSliderColors()
        
        colorizedView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: CGFloat(alpfaSlider.value)
        )
    }
    
    // MARK: - Private functions
    private func setLabelValues() {
        redLabel.text = String(format: "%.1f", redSlider.value)
        greenLabel.text = String(format: "%.1f", greenSlider.value)
        blueLabel.text = String(format: "%.1f", blueSlider.value)
        alphaLabel.text = String(format: "%.1f", alpfaSlider.value)
    }
    
    private func setSliderColors() {
        redSlider.minimumTrackTintColor = UIColor(red: CGFloat(redSlider.value), green: 0, blue: 0, alpha: 1)
        greenSlider.minimumTrackTintColor = UIColor(red: 0, green: CGFloat(greenSlider.value), blue: 0, alpha: 1)
        blueSlider.minimumTrackTintColor = UIColor(red: 0, green: 0, blue: CGFloat(blueSlider.value), alpha: 1)
        alpfaSlider.minimumTrackTintColor = UIColor(red: 0, green: 0, blue: 0, alpha: CGFloat(alpfaSlider.value))
    }
    
    
}

