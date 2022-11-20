//
//  MainViewController.swift
//  ColorizerApp_SS
//
//  Created by MacBook Air 13 on 20.11.2022.
//

import UIKit

protocol ColorViewControllerDelegate {
    
}

class MainViewController: UIViewController {
    
    @IBOutlet var mainViewColor: UIView!
    
    private var colorSettings = MainColorSettings(redValue: 0.5, greenValue: 0.5, blueValue: 0.5, alphaValue: 0.5)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    // MARK: - Functions
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController else { return }
        guard let colorSettingsVC = navigationVC.topViewController as? ColorViewController else { return }
        colorSettingsVC.colorSettings = colorSettings
        colorSettingsVC.delegate = self
        
    }
}
    // MARK: - Model
    
//    struct MainColorSettings {
//        var redValue: Float
//        var greenValue: Float
//        var blueValue: Float
//        var alphaValue: Float
//    }



extension MainViewController: ColorViewControllerDelegate {
    func setNewColors() {
        return
//        mainViewColor.backgroundColor = UIColor(
//            red: CGFloat(redValue),
//            green: CGFloat(greenValue),
//            blue: CGFloat(blueValue),
//            alpha: CGFloat(alphaValue)
//        )
    }
}
