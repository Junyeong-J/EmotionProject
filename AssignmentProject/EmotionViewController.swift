//
//  EmotionViewController.swift
//  AssignmentProject
//
//  Created by 전준영 on 5/19/24.
//

import UIKit

class EmotionViewController: UIViewController {

    
    var countList = [0,0,0,0,0,0,0,0,0]
    let textList = ["행복해", "사랑해", "좋아해", "당황해", "속상해", "우울해", "심심해", "짜증나", "눈물나"]
    
    @IBOutlet var buttonLists: [UIButton]!
    @IBOutlet var labelLists: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUI()
        
    }
    
    func setUI() {
        
        settingButtonOrLabel(button: buttonLists[0], label: labelLists[0], imageName: "slime1", textLabel: "행복해 0")
        settingButtonOrLabel(button: buttonLists[1], label: labelLists[1], imageName: "slime2", textLabel: "사랑해 0")
        settingButtonOrLabel(button: buttonLists[2], label: labelLists[2], imageName: "slime3", textLabel: "좋아해 0")
        settingButtonOrLabel(button: buttonLists[3], label: labelLists[3], imageName: "slime4", textLabel: "당황해 0")
        settingButtonOrLabel(button: buttonLists[4], label: labelLists[4], imageName: "slime5", textLabel: "속상해 0")
        settingButtonOrLabel(button: buttonLists[5], label: labelLists[5], imageName: "slime6", textLabel: "우울해 0")
        settingButtonOrLabel(button: buttonLists[6], label: labelLists[6], imageName: "slime7", textLabel: "심심해 0")
        settingButtonOrLabel(button: buttonLists[7], label: labelLists[7], imageName: "slime8", textLabel: "짜증나 0")
        settingButtonOrLabel(button: buttonLists[8], label: labelLists[8], imageName: "slime9", textLabel: "눈물나 0")
        
    }
    
    func settingButtonOrLabel(button: UIButton, label: UILabel, imageName: String, textLabel: String) {
        
        let image = UIImage(named: imageName)
        button.setImage(image, for: .normal)
        label.text = textLabel
        label.font = .systemFont(ofSize: 13)
        label.textAlignment = .center
        
    }
    
    @IBAction func happyEmotionButtonTapped(_ sender: UIButton) {
        
        countList[sender.tag] += 1
        
        labelLists[sender.tag].text = "\(textList[sender.tag])  \(countList[sender.tag])"
        
    }
    
    
    
}
