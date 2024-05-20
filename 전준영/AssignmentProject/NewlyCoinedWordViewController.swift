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
    @IBOutlet var firstWordButton: UIButton!
    @IBOutlet var secondWordButton: UIButton!
    @IBOutlet var thirdWordButton: UIButton!
    @IBOutlet var fourthWordButton: UIButton!
    @IBOutlet var fifthWordButton: UIButton!
    @IBOutlet var sixthWordButton: UIButton!
    
    let newlyWordDic = ["빠태":"빠른 태세전환", "완내스":"완전 내 스타일", "무물보":"무엇이든지 물어보세요", "당모치":"당연히 모든 치킨은 옳다", "상사병":"상사때문에 얻는 화병", "삼귀자":"사귀자의 전단계"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
        
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
        
        buttonStyle(button: firstWordButton, labelText: "빠태")
        buttonStyle(button: secondWordButton, labelText: "완내스")
        buttonStyle(button: thirdWordButton, labelText: "무물보")
        buttonStyle(button: fourthWordButton, labelText: "당모치")
        buttonStyle(button: fifthWordButton, labelText: "상사병")
        buttonStyle(button: sixthWordButton, labelText: "삼귀자")
        
    }
    
    func buttonStyle(button: UIButton, labelText: String) {
        
        button.setTitle(labelText, for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 10
        
    }
    
    @IBAction func searchButtonTapped(_ sender: UIButton) {
        
        if let word = newlyWordDic[searchTextField.text!]{
            resultLabel.text = word
        } else {
            resultLabel.text = "검색결과가 없습니다"
        }
    }
    
    @IBAction func searchTextFieldReturnTapped(_ sender: UITextField) {
        
        if let word = newlyWordDic[searchTextField.text!]{
            resultLabel.text = word
        } else {
            resultLabel.text = "검색결과가 없습니다"
        }
        
    }
    
    @IBAction func firstWordButtonTapped(_ sender: UIButton) {
        
        searchTextField.text = "빠태"
        resultLabel.text = newlyWordDic[searchTextField.text!]
        
    }
    
    @IBAction func secondWordButtonTapped(_ sender: UIButton) {
        
        searchTextField.text = "완내스"
        resultLabel.text = newlyWordDic[searchTextField.text!]
        
    }
    
    @IBAction func thirdWordButtonTapped(_ sender: UIButton) {
        
        searchTextField.text = "무물보"
        resultLabel.text = newlyWordDic[searchTextField.text!]
        
    }
    
    @IBAction func fourthWordButtonTapped(_ sender: UIButton) {
        
        searchTextField.text = "당모치"
        resultLabel.text = newlyWordDic[searchTextField.text!]
        
    }
    
    @IBAction func fifthWordButtonTapped(_ sender: UIButton) {
        
        searchTextField.text = "상사병"
        resultLabel.text = newlyWordDic[searchTextField.text!]
        
    }
    
    @IBAction func sixthWordButtonTapped(_ sender: UIButton) {
        
        searchTextField.text = "삼귀자"
        resultLabel.text = newlyWordDic[searchTextField.text!]
        
    }
    
    
    
}
