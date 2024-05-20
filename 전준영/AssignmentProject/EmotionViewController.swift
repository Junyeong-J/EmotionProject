//
//  EmotionViewController.swift
//  AssignmentProject
//
//  Created by 전준영 on 5/19/24.
//

import UIKit

class EmotionViewController: UIViewController {

    
    @IBOutlet var happyEmotionButton: UIButton!
    @IBOutlet var happyLabel: UILabel!
    var happyNum = 0
    
    @IBOutlet var loveEmotionButton: UIButton!
    @IBOutlet var loveLabel: UILabel!
    var loveNum = 0
    
    @IBOutlet var likeEmotionButton: UIButton!
    @IBOutlet var likeLabel: UILabel!
    var likeNum = 0
    
    @IBOutlet var embarrassEmotionButton: UIButton!
    @IBOutlet var embarrassLabel: UILabel!
    var embarrassNum = 0
    
    @IBOutlet var upsetEmotionButton: UIButton!
    @IBOutlet var upsetLabel: UILabel!
    var upsetNum = 0
    
    @IBOutlet var depressEmotionButton: UIButton!
    @IBOutlet var depressLabel: UILabel!
    var depressNum = 0
    
    
    @IBOutlet var boredEmotionButton: UIButton!
    @IBOutlet var boredLabel: UILabel!
    var boredNum = 0
    
    @IBOutlet var annoyEmotionButton: UIButton!
    @IBOutlet var annoyLabel: UILabel!
    var annoyNum = 0
    
    @IBOutlet var sadEmotionButton: UIButton!
    @IBOutlet var sadLabel: UILabel!
    var sadNum = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        settingButtonOrLabel(button: happyEmotionButton, label: happyLabel, imageName: "slime1", textLabel: "행복해 \(happyNum)")
        
        settingButtonOrLabel(button: loveEmotionButton, label: loveLabel, imageName: "slime2", textLabel: "사랑해 \(loveNum)")
        
        settingButtonOrLabel(button: likeEmotionButton, label: likeLabel, imageName: "slime3", textLabel: "좋아해 \(likeNum)")
        
        settingButtonOrLabel(button: embarrassEmotionButton, label: embarrassLabel, imageName: "slime4", textLabel: "당황해 \(embarrassNum)")
        
        settingButtonOrLabel(button: upsetEmotionButton, label: upsetLabel, imageName: "slime5", textLabel: "속상해 \(upsetNum)")
        
        settingButtonOrLabel(button: depressEmotionButton, label: depressLabel, imageName: "slime6", textLabel: "우울해 \(depressNum)")
        
        settingButtonOrLabel(button: boredEmotionButton, label: boredLabel, imageName: "slime7", textLabel: "심심해     \(boredNum)")
        
        settingButtonOrLabel(button: annoyEmotionButton, label: annoyLabel, imageName: "slime8", textLabel: "짜증나 \(annoyNum)")
        
        settingButtonOrLabel(button: sadEmotionButton, label: sadLabel, imageName: "slime9", textLabel: "눈물나 \(sadNum)")
        
    }
    
    func settingButtonOrLabel(button: UIButton, label: UILabel, imageName: String, textLabel: String) {
        
        let image = UIImage(named: imageName)
        button.setImage(image, for: .normal)
        label.text = textLabel
        label.font = .systemFont(ofSize: 13)
        label.textAlignment = .center
        
    }
    
    @IBAction func happyEmotionButtonTapped(_ sender: UIButton) {
        
//        let randnum = Int.random(in: 0...10)
//        happyLabel.text = "행복해 \(randnum)"
        happyNum += 1
        happyLabel.text = "행복해 \(happyNum)"
        
    }
    
    @IBAction func loveEmotionButtonTapped(_ sender: UIButton) {
        
        loveNum += 1
        loveLabel.text = "사랑해 \(loveNum)"
        
    }
    
    @IBAction func likeEmotionButtonTapped(_ sender: UIButton) {
        
        likeNum += 1
        likeLabel.text = "좋아해 \(likeNum)"
        
    }
    
    
    @IBAction func embarrassEmotionButtonTapped(_ sender: UIButton) {
        
        embarrassNum += 1
        embarrassLabel.text = "당황해 \(embarrassNum)"
        
    }
    
    @IBAction func upsetEmotionButtonTapped(_ sender: UIButton) {
        
        upsetNum += 1
        upsetLabel.text = "속상해 \(upsetNum)"
        
    }
    
    @IBAction func depressEmotionButtonTapped(_ sender: UIButton) {
        
        depressNum += 1
        depressLabel.text = "우울해 \(depressNum)"
        
    }
    
    @IBAction func boredEmotionButtonTapped(_ sender: UIButton) {
        
        boredNum += 1
        boredLabel.text = "심심해 \(boredNum)"
        
    }
    
    @IBAction func annoyEmotionButtonTapped(_ sender: UIButton) {
        
        annoyNum += 1
        annoyLabel.text = "짜증나 \(annoyNum)"
        
    }
    
    @IBAction func sadEmotionButtonTapped(_ sender: UIButton) {
        
        sadNum += 1
        sadLabel.text = "눈물나 \(sadNum)"
        
    }
    
    
}
