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
    
    @IBOutlet var buttonList: [UIButton]!
    @IBOutlet var labelList: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUI()
        
    }
    
    func setUI() {
        
        settingButtonOrLabel(button: buttonList[0], label: labelList[0], imageName: "slime1", textLabel: "행복해 0")
        settingButtonOrLabel(button: buttonList[1], label: labelList[1], imageName: "slime2", textLabel: "사랑해 0")
        settingButtonOrLabel(button: buttonList[2], label: labelList[2], imageName: "slime3", textLabel: "좋아해 0")
        settingButtonOrLabel(button: buttonList[3], label: labelList[3], imageName: "slime4", textLabel: "당황해 0")
        settingButtonOrLabel(button: buttonList[4], label: labelList[4], imageName: "slime5", textLabel: "속상해 0")
        settingButtonOrLabel(button: buttonList[5], label: labelList[5], imageName: "slime6", textLabel: "우울해 0")
        settingButtonOrLabel(button: buttonList[6], label: labelList[6], imageName: "slime7", textLabel: "심심해 0")
        settingButtonOrLabel(button: buttonList[7], label: labelList[7], imageName: "slime8", textLabel: "짜증나 0")
        settingButtonOrLabel(button: buttonList[8], label: labelList[8], imageName: "slime9", textLabel: "눈물나 0")
        
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
        
        labelList[sender.tag].text = "\(textList[sender.tag])  \(countList[sender.tag])"
        
    }
    
    
    
}
