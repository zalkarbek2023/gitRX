//
//  ReloadProductsDataViewController.swift
//  Homework4.4
//
//  Created by Zhansuluu Kydyrova on 15/1/23.
//

import UIKit

class ReloadProductsDataViewController: UIViewController {

    @IBOutlet private weak var idTextField: UITextField!
    @IBOutlet private weak var titleTextField: UITextField!
    @IBOutlet private weak var priceTextField: UITextField!
    @IBOutlet private weak var descriptionTextField: UITextField!
    @IBOutlet private weak var categoryTextField: UITextField!
    @IBOutlet private weak var brandTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func reloadProductButton(_ sender: UIButton) {
        guard Int(idTextField.text!) != nil,
              Int(priceTextField.text!) != nil,
              !titleTextField.text!.isEmpty,
              !descriptionTextField.text!.isEmpty,
              !categoryTextField.text!.isEmpty,
              !brandTextField.text!.isEmpty else {
            showAlert()
            return
        }
        
        let productModel = ProductModel(
            id: 0,
            title: titleTextField.text!,
            description: descriptionTextField.text!,
            price: Int(priceTextField.text!)!,
            discountPercentage: 0.0,
            rating: 0.0, brand:  brandTextField.text!,
            category: categoryTextField.text!,
            images: [""]
        )
        
        putProductsData(model: productModel)
    }
    
    private func putProductsData(model: ProductModel) {
        Task {
            do {
                let result = try await NetworkLayer.shared.putProductsData(model: model, id: Int(idTextField.text!)!)
                display(result)
            } catch {
                display2(error)
            }
        }
        
    }
    
    private func display(_ result: ProductModel) {
        DispatchQueue.main.async {
            self.succesfulReloadingDataAlert()
        }
    }
    
    private func display2(_ error: Error) {
        print("\(error.localizedDescription)")
    }
    
    
    
    
    private func showAlert() {
        let alert = UIAlertController(title: "Не все данные заполнены верно", message: "Перепроверьте ваш запрос", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .cancel)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    private func succesfulReloadingDataAlert() {
        let alert = UIAlertController(title: "Данные обновлены успешно", message: "Спасибо за сотрудничество!", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .cancel)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
