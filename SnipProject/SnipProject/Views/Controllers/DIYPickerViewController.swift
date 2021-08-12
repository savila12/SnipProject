//
//  DIYPickerViewController.swift
//  SnipProject
//
//  Created by Matthew Hernandez on 7/30/21.
//

import UIKit

class DIYPickerViewController: UIViewController {
    
    let clothing = ["-", "Skirt", "Shirt", "Pants", "Scarf"]
    let categories = ["-", "Bedazzling", "Tie Dye", "Embroidery", "Knitting"]
    
    let clothingPicker = UIPickerView()
    let clothingTextField = UITextField()
    let diyCategories = UILabel()
    let categoryTextField = UITextField()
    let categoryPicker = UIPickerView()
    let orLabel = UILabel()
    let skipBtn = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clothingPicker.delegate = self
        clothingPicker.dataSource = self
        categoryPicker.delegate = self
        categoryPicker.dataSource = self
        self.title = "What Type of DIY item do you like?"
        
        setUpClothingTextField()
        setUpDIYCategoriesLabel()
        setUpCategoriesTextField()
        setUpOrLabel()
        setUpSkipBtn()
        
    }
    
    
    func setUpClothingTextField() {
        view.addSubview(clothingTextField)
        clothingTextField.placeholder = "Choose items you like"
        clothingTextField.textAlignment = .center
        clothingTextField.inputView = clothingPicker
        
        
        clothingTextField.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 80, left: 50, bottom: 0, right: -50))
        
    }
    
    func setUpDIYCategoriesLabel(){
        view.addSubview(diyCategories)
        diyCategories.text = "Tell us your favorite DIY Categories"
        
        diyCategories.anchor(top: clothingTextField.safeAreaLayoutGuide.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 40, left: 50, bottom: 0, right: -50))
        
    }
    
    func setUpCategoriesTextField(){
        view.addSubview(categoryTextField)
        categoryTextField.inputView = categoryPicker
        categoryTextField.placeholder = "Categories"
        categoryTextField.textAlignment = .center
        
        categoryTextField.anchor(top: diyCategories.safeAreaLayoutGuide.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 20, left: 50, bottom: 0, right: -50))
        
    }
    
    func setUpOrLabel() {
        view.addSubview(orLabel)
        orLabel.text = "or"
        orLabel.textAlignment = .center
        
        orLabel.anchor(top: categoryTextField.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 40, left: 80, bottom: 0, right: -80))
    }
    
    func setUpSkipBtn () {
        view.addSubview(skipBtn)
        skipBtn.setTitle("Skip", for: .normal)
        skipBtn.setTitleColor(.blue, for: .normal)
        
        skipBtn.addTarget(self, action: #selector(skip), for: .touchUpInside)
        
        skipBtn.anchor(top: orLabel.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 40, left: 80, bottom: 0, right: -80))
    }
    
    @objc func skip(){
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(identifier: "ExperienceViewController")
        
        navigationController?.pushViewController(vc, animated: true)
    }

}

extension DIYPickerViewController: UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return clothing.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == categoryPicker {
            let row = categories[row]
            return row
        } else {
            let row = clothing[row]
            return row
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if pickerView == clothingPicker {
            let selected1 = clothing[pickerView.selectedRow(inComponent: 0)]
            let selected2 = clothing[pickerView.selectedRow(inComponent: 1)]
            let selected3 = clothing[pickerView.selectedRow(inComponent: 2)]
            clothingTextField.text = "\(selected1), \(selected2), \(selected3)"
            clothingTextField.resignFirstResponder()
        } else {
            let selected1 = categories[pickerView.selectedRow(inComponent: 0)]
            let selected2 = categories[pickerView.selectedRow(inComponent: 1)]
            let selected3 = categories[pickerView.selectedRow(inComponent: 2)]
            categoryTextField.text = "\(selected1), \(selected2), \(selected3)"
            categoryTextField.resignFirstResponder()
        }
      
        
        
    }
    
    
    
    
    
}
