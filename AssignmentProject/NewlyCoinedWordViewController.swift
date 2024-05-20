//
//  NewlyCoinedWordViewController.swift
//  AssignmentProject
//
//  Created by 전준영 on 5/19/24.
//

import UIKit

class NewlyCoinedWordViewController: UIViewController {
    
    
    
    @IBOutlet var searchView: UIView!
    @IBOutlet var searchButton: UIButton!
    @IBOutlet var searchTextField: UITextField!
    @IBOutlet var resultImageView: UIImageView!
    @IBOutlet var resultLabel: UILabel!
    
    @IBOutlet var wordButtonList: [UIButton]!
    
    let newlyWordDic = ["빠태":"빠른 태세전환", "완내스":"완전 내 스타일", "무물보":"무엇이든지 물어보세요", "당모치":"당연히 모든 치킨은 옳다", "상사병":"상사때문에 얻는 화병", "삼귀자":"사귀자의 전단계", "nocap": "진실", "반모": "반말 모드 줄임말", "알잘딱깔센": "알아서 잘 딱 깔끔하고 센스있게"]
    
    var newlyWords = ["빠태", "완내스", "무물보", "당모치", "상사병", "삼귀자", "NoCap", "반모", "알잘딱깔센"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchView.layer.borderColor = UIColor.black.cgColor
        searchView.layer.borderWidth = 3
        
        let image = UIImage(systemName: "magnifyingglass")?.withTintColor(.white, renderingMode: .alwaysOriginal)
        searchButton.setImage(image, for: .normal)
        searchButton.backgroundColor = .black
        
        searchTextField.tintColor = .black
        
        resultImageView.image = UIImage(named: "background")
        resultImageView.contentMode = .scaleAspectFill
        
        resultLabel.text = "단어를 검색해 주세요."
        resultLabel.font = .systemFont(ofSize: 13)
        resultLabel.textAlignment = .center
        
        for i in 0...6{
            buttonStyle(button: wordButtonList[i], labelText: newlyWords[i])
        }
        
    }
    
    func buttonStyle(button: UIButton, labelText: String) {
        
        button.setTitle(labelText, for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 10
        
    }
    
    @IBAction func keyboardDismiss(_ sender: UITapGestureRecognizer) {
        
        view.endEditing(true)
        
    }
    
    @IBAction func searchButtonTapped(_ sender: UIButton) {
        view.endEditing(true)
        if let lowercase = searchTextField.text?.lowercased(), let word = newlyWordDic[lowercase]{
            resultLabel.text = word
        } else {
            resultLabel.text = "검색결과가 없습니다"
        }
    }
    
    @IBAction func searchTextFieldReturnTapped(_ sender: UITextField) {
        
        if let lowercase = searchTextField.text?.lowercased(), let word = newlyWordDic[lowercase]{
            resultLabel.text = word
        } else {
            resultLabel.text = "검색결과가 없습니다"
        }
        
    }

    
    @IBAction func recommandButtonTapped(_ sender: UIButton) {
        
        searchTextField.text = sender.currentTitle?.lowercased()
        resultLabel.text = newlyWordDic[searchTextField.text!]
        
        newlyWords.shuffle()
        
        for i in 0...6{
            buttonStyle(button: wordButtonList[i], labelText: newlyWords[i])
        }
        
    }
    
    
    
}
