//
//  AddProductViewController.swift
//  Homework4.4
//
//  Created by Zhansuluu Kydyrova on 13/1/23.
//

import UIKit

class AddProductViewController: UIViewController {

    @IBOutlet private weak var productTitleTF: UITextField!
    @IBOutlet private weak var productPriceTF: UITextField!
    @IBOutlet private weak var productDescriptionTF: UITextField!
    @IBOutlet private weak var productCategoryTF: UITextField!
    @IBOutlet private weak var productBrandTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addNewProductButton(_ sender: UIButton) {
        guard !productTitleTF.text!.isEmpty,
              !productDescriptionTF.text!.isEmpty,
              !productCategoryTF.text!.isEmpty,
              !productBrandTF.text!.isEmpty,
              Int(productPriceTF.text!) != nil else {
            showAlert()
            return
        }
        
        let productModel = ProductModel(
            id: 0,
            title: productTitleTF.text!,
            description: productDescriptionTF.text!,
            price: Int(productPriceTF.text!)!,
            discountPercentage: 0.0,
            rating: 0.0, brand: productBrandTF.text!,
            category: productCategoryTF.text!,
            images: [""]
        )

        configurePostingProductsData(model: productModel)
    }
    
    private func configurePostingProductsData(model: ProductModel) {
        
        Task {
            do {
              let result = try await NetworkLayer.shared.postProductsData(model: model)
                display(result)
            } catch {
                display(error)
            }
        }
        
        
    }
    
    private func display(_ result: ProductModel) {
        DispatchQueue.main.async {
            self.succesfulPostingDataAlert()
        }
    }
    
    private func display(_ error: Error) {
        print("ERROR:\(error.localizedDescription)")
    }
    
    
    private func showAlert() {
        let alert = UIAlertController(title: "Не все данные заполнены верно", message: "Перепроверьте ваш запрос", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .cancel)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    private func succesfulPostingDataAlert() {
        let alert = UIAlertController(title: "Данные отправлены успешно", message: "Спасибо за сотрудничество!", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .cancel)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
