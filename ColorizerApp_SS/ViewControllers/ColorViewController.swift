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
    
    @IBOutlet var redTextField: UITextField!
    @IBOutlet var greenTextField: UITextField!
    @IBOutlet var blueTextField: UITextField!
    @IBOutlet var alphaTextField: UITextField!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var alpfaSlider: UISlider!
    
    // MARK: - Variables
    var colorSettings: MainColorSettings!
    var delegate: ColorViewControllerDelegate!
    
    
    // MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        colorizedView.layer.cornerRadius = 20
        
        setTextFieldValues()
        setSliderColors()
    }
    
    // MARK: - IB Actions
    @IBAction func sliderAction(_ sender: Any) {
        
        setTextFieldValues()
        setSliderColors()
        setViewColor()
        
    }
    
    @IBAction func inputColorValues(_ sender: Any) {
        setSliderValues()
        setViewColor()
    }
    
    
    
    // MARK: - Private functions
    private func setTextFieldValues() {
        redTextField.text = String(format: "%.2f", redSlider.value)
        greenTextField.text = String(format: "%.2f", greenSlider.value)
        blueTextField.text = String(format: "%.2f", blueSlider.value)
        alphaTextField.text = String(format: "%.2f", alpfaSlider.value)
        setSliderColors()
    }
    
    private func setSliderColors() {
        redSlider.minimumTrackTintColor = UIColor(red: CGFloat(redSlider.value), green: 0, blue: 0, alpha: 1)
        greenSlider.minimumTrackTintColor = UIColor(red: 0, green: CGFloat(greenSlider.value), blue: 0, alpha: 1)
        blueSlider.minimumTrackTintColor = UIColor(red: 0, green: 0, blue: CGFloat(blueSlider.value), alpha: 1)
        alpfaSlider.minimumTrackTintColor = UIColor(red: 0, green: 0, blue: 0, alpha: CGFloat(alpfaSlider.value))
    }
    
    private func setSliderValues() {
        redSlider.setValue(Float(redTextField.text!) ?? 0, animated: true)
        greenSlider.setValue(Float(greenTextField.text!) ?? 0, animated: true)
        blueSlider.setValue(Float(blueTextField.text!) ?? 0, animated: true)
        alpfaSlider.setValue(Float(alphaTextField.text!) ?? 0, animated: true)
    }
    
    private func setViewColor() {
        colorizedView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: CGFloat(alpfaSlider.value)
        )
    }
    
}

// MARK: - UITextFieldDelegate

extension ColorViewController: UITextFieldDelegate {
    
}
