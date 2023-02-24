//
//  ProfileViewController.swift
//  CocktailsHW
//
//  Created by zalkarbek on 22/2/23.
//

import UIKit
import SnapKit
import FirebaseAuth

class ProfileViewController: UIViewController {

    private lazy var proverkaProfile: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "multiply.circle")
        imageView.backgroundColor = .black
        imageView.tintColor = .white
        imageView.layer.cornerRadius = 40
        return imageView
    }()
    
    private lazy var button: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "circle.circle.fill"), for: .normal)
//        button.imageView?.contentMode = .scaleAspectFit
//        button.imageEdgeInsets = UIEdgeInsets(top: 12.0, left: 12.0, bottom: 12.0, right: 12.0)
        button.addTarget(self, action: #selector(signUser), for: .touchUpInside)
        button.backgroundColor = .purple
        button.layer.cornerRadius = 10
        return button
    }()
    
    private lazy var name: UILabel = {
        let label = UILabel()
        label.text = "Profile"
        label.tintColor = .black
        label.font = UIFont(name:"HelveticaNeue-Bold", size: 40.0)
        return label
    }()
    
    private lazy var viewPodName: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray3
        view.layer.cornerRadius = 10
        return view
    }()
    
    private lazy var nameProduct: UILabel = {
        let label = UILabel()
        label.text = "Sanita Queen"
        label.tintColor = .black
        label.textAlignment = .left
        label.numberOfLines = 2
        label.font = UIFont(name: label.font.fontName, size: 40.0)
        return label
    }()
    
    private lazy var emailTextField: UITextField = {
        let textfield = UITextField()
        textfield.placeholder = "  Email:"
        textfield.textAlignment = .left
        textfield.layer.cornerRadius = 15
        textfield.layer.borderWidth = 0.2
        return textfield
    }()
    
    private lazy var emailImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "square.and.pencil")
        imageView.tintColor = .placeholderText
        imageView.layer.cornerRadius = 40
        return imageView
    }()
    
    private lazy var dataTextField: UITextField = {
        let textfield = UITextField()
        textfield.placeholder = "  Data of birth:"
        textfield.textAlignment = .left
        textfield.layer.cornerRadius = 15
        textfield.layer.borderWidth = 0.2
        return textfield
    }()
    
    private lazy var dataImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "square.and.pencil")
        imageView.tintColor = .placeholderText
        imageView.layer.cornerRadius = 40
        return imageView
    }()
    
    private lazy var addressTextField: UITextField = {
        let textfield = UITextField()
        textfield.placeholder = "  Address:"
        textfield.textAlignment = .left
        textfield.layer.cornerRadius = 15
        textfield.layer.borderWidth = 0.2
        return textfield
    }()
    
    private lazy var addressImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "square.and.pencil")
        imageView.tintColor = .placeholderText
        imageView.layer.cornerRadius = 40
        return imageView
    }()
    
    private lazy var viewPodAddress: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray5
        view.layer.cornerRadius = 10
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
       setupView()
       setupLayout()
        
    }
    
    
    private func setupView() {
        view.addSubview(proverkaProfile)
        view.addSubview(button)
        view.addSubview(name)
        view.addSubview(viewPodName)
        view.addSubview(nameProduct)
        view.addSubview(emailTextField)
        view.addSubview(emailImageView)
        view.addSubview(dataTextField)
        view.addSubview(dataImageView)
        view.addSubview(addressTextField)
        view.addSubview(addressImageView)
        view.addSubview(viewPodAddress)
    }
    
    private func setupLayout() {
        proverkaProfile.snp.makeConstraints { make in
            make.top.equalTo(view.snp.top).offset(50)
            make.left.equalTo(view.snp.left).offset(10)
            make.width.equalTo(50)
            make.height.equalTo(50)
        }
        button.snp.makeConstraints { make in
            make.top.equalTo(view.snp.top).offset(100)
            make.left.equalTo(proverkaProfile.snp.left).offset(330)
            make.width.equalTo(50)
            make.height.equalTo(50)
        }
        
        name.snp.makeConstraints { make in
            make.top.equalTo(proverkaProfile.snp.top).offset(100)
            make.left.equalTo(view.snp.left).offset(15)
            make.width.equalTo(150)
            make.height.equalTo(50)
        }
        
        viewPodName.snp.makeConstraints { make in
            make.top.equalTo(name.snp.top).offset(80)
            make.left.equalTo(view.snp.left).offset(15)
            make.width.equalTo(390)
            make.height.equalTo(10)
        }
        
        nameProduct.snp.makeConstraints { make in
            make.top.equalTo(viewPodName.snp.top).offset(80)
            make.right.equalTo(view.snp.right).offset(-20)
            make.left.equalTo(view.snp.left).offset(300)
            make.width.equalTo(50)
            make.height.equalTo(100)
        }
        
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(viewPodName.snp.top).offset(230)
            make.left.equalTo(view.snp.left).offset(15)
            make.width.equalTo(350)
            make.height.equalTo(50)
        }
        emailImageView.snp.makeConstraints { make in
            make.top.equalTo(viewPodName.snp.top).offset(228)
            make.left.equalTo(emailTextField.snp.left).offset(355)
            make.width.equalTo(50)
            make.height.equalTo(50)
        }
        dataTextField.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.top).offset(80)
            make.left.equalTo(view.snp.left).offset(15)
            make.width.equalTo(350)
            make.height.equalTo(50)
        }
        dataImageView.snp.makeConstraints { make in
            make.top.equalTo(emailImageView.snp.top).offset(80)
            make.left.equalTo(dataTextField.snp.left).offset(355)
            make.width.equalTo(50)
            make.height.equalTo(50)
        }
        addressTextField.snp.makeConstraints { make in
            make.top.equalTo(dataTextField.snp.top).offset(80)
            make.left.equalTo(view.snp.left).offset(15)
            make.width.equalTo(350)
            make.height.equalTo(150)
        }
        addressImageView.snp.makeConstraints { make in
            make.top.equalTo(dataImageView.snp.top).offset(130)
            make.left.equalTo(dataTextField.snp.left).offset(355)
            make.width.equalTo(50)
            make.height.equalTo(50)
        }
        viewPodAddress.snp.makeConstraints { make in
            make.top.equalTo(addressTextField.snp.top).offset(190)
            make.left.equalTo(view.snp.left).offset(15)
            make.width.equalTo(390)
            make.height.equalTo(10)
        }
    }
    
    @objc func signUser() {
        guard let email = emailTextField.text, !email.isEmpty,
              let adress = addressTextField.text, !adress.isEmpty else {
            return
        }
        
        FirebaseAuth.Auth.auth().signIn(withEmail: email, password: adress, completion: { [weak self] result, error in
            
            guard let strongSelf = self else {
                return
            }
            
            guard error == nil else {
                strongSelf.showCreateAccount(email: email, password: adress)
                return
            }
            print("You have sign in")
        })
        
    }
    
    private func showCreateAccount(email: String, password: String) {
        let alert = UIAlertController(title: "Creat Account",
                                      message: "Would you like to create an account",
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Continue", style: .default, handler: {_ in
            FirebaseAuth.Auth.auth().createUser(withEmail: email, password: password) { [weak self] result, error in
                guard let strongSelf = self else {
                    return
                }
                
                
                guard error == nil else {
                   print("Account created failed")
                    return
                }
                print("You have sign in")
                let inside = InsideViewController()
                self?.navigationController?.pushViewController(inside, animated: true)
            }
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: {_ in
            
        }))
        present(alert, animated: true)
    }
    


}
