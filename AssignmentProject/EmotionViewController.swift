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
    @IBOutlet var resetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUI()
        
    }
    
    func setUI() {
        
        countList = UserDefaults.standard.array(forKey: "countList") as? [Int] ?? [0,0,0,0,0,0,0,0,0]
        for i in 0...8 {
            settingButtonOrLabel(button: buttonLists[i], label: labelLists[i], imageName: "slime\(i+1)", textLabel: "\(textList[i]) \(countList[i])")
        }
        
        resetButton.titleLabel?.font = .systemFont(ofSize: 20)
        resetButton.setTitle("리셋하기", for: .normal)
        resetButton.setTitleColor(.white, for: .normal)
        resetButton.backgroundColor = .black
        resetButton.layer.cornerRadius = 20
        
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
        UserDefaults.standard.set(countList, forKey: "countList")
        labelLists[sender.tag].text = "\(textList[sender.tag])  \(countList[sender.tag])"
        
    }
    
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        
        for key in UserDefaults.standard.dictionaryRepresentation().keys {
            UserDefaults.standard.removeObject(forKey: key.description)
        }
        
        countList = [0,0,0,0,0,0,0,0,0]
        
        for i in 0...8{
            labelLists[i].text = "\(textList[i]) \(countList[i])"
        }
        
    }
    
    
    
}
