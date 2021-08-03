//
//  DIYPickerViewController.swift
//  SnipProject
//
//  Created by Matthew Hernandez on 7/30/21.
//

import UIKit

class DIYPickerViewController: UIViewController {
    
    let data = ["Skirt", "Shirt", "Pants", "Scarf"]
    
    let clothingPicker = UIPickerView()
    let clothingTextField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clothingPicker.delegate = self
        clothingPicker.dataSource = self
        self.title = "What Type of DIY item do you like?"
        
        setUpClothingTextField()
        //setUpClotherPicker()
        
    }
    
    func setUpClotherPicker() {
        //view.addSubview(clothingPicker)
//        clothingPicker.center = self.view.center
        //clothingTextField.inputView = clothingPicker
        
//        clothingPicker.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 40, left: 50, bottom: 0, right: -50))
        
    }
    
    func setUpClothingTextField() {
        view.addSubview(clothingTextField)
        clothingTextField.placeholder = "Choose items you like"
        clothingTextField.textAlignment = .center
        clothingTextField.inputView = clothingPicker
        
        clothingTextField.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 40, left: 50, bottom: 0, right: -50))
        
    }
    
}

extension DIYPickerViewController: UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let row = data[row]
        return row
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        let selectedArr = [data[row]]
//        clothingTextField.text = selectedArr.description
        
        clothingTextField.text =  data[row]
        
        clothingTextField.resignFirstResponder()
    }
    
    
    
    
}
