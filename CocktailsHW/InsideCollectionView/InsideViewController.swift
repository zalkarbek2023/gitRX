//
//  InsideViewController.swift
//  CocktailsHW
//
//  Created by zalkarbek on 22/2/23.
//

import UIKit
import SnapKit

class InsideViewController: UIViewController {
    
    private lazy var mainImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "1")!
        return imageView
    }()
    
    private lazy var nameProductView: UIView = {
        let view = UIView()
        view.layer.borderWidth = 0.5
        view.layer.borderColor = UIColor.white.cgColor
        view.layer.cornerRadius = 15
        return view
    }()
    
    private lazy var nameProduct: UILabel = {
        let label = UILabel()
        label.text = "Sanita Queen"
        label.tintColor = .white
        label.font = UIFont(name: label.font.fontName, size: 20)
        return label
    }()
    
    private lazy var infoView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray6
        view.layer.cornerRadius = 50
        return view
    }()
    
    private lazy var betweenView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 25
        view.layer.borderWidth = 0.5
        view.layer.borderColor = UIColor.placeholderText.cgColor
        return view
    }()
    
    private lazy var betweenImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "1")!
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 15
        return imageView
    }()
    
    private lazy var betweenImageView2: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "1")!
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 15
        return imageView
    }()
    
    private lazy var betweenNumber: UILabel = {
        let label = UILabel()
        label.text = "4.5"
        label.tintColor = .white
        label.font = UIFont(name: label.font.fontName, size: 20)
        return label
    }()
    
    private lazy var betweenImageView3: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "star.fill")!
        imageView.layer.cornerRadius = 10
        imageView.tintColor = .systemOrange
        return imageView
    }()
    
    private lazy var descrip: UILabel = {
        let label = UILabel()
        label.text = "Description"
        label.tintColor = .black
        label.font = UIFont(name:"Arial Bold", size: 20.0)
        return label
    }()
    
    private lazy var descText: UILabel = {
        let label = UILabel()
        label.text = "Find the best selling dishes. All meales are preparred fresh. Ingretieb jjd djksckjc jckjdskcn kjbcc kjncknc jckcnsd scksc scksck scksckc nckjsn kcnsncn sjkc. Rhcb dbcb kbcbk bckbc. Djf jdnd jndn djnnkl jknkdn. Dcjdjcbd bcbscbc. Syug khdhvd dscsnns csdnsd."
        label.numberOfLines = 8
        label.tintColor = .placeholderText
        label.font = UIFont(name: "Avenir Light", size: 10.0)
        return label
    }()
    
    private lazy var heartInfoView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.red.cgColor
        view.layer.cornerRadius = 25
        return view
    }()
    
    private lazy var heartImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "heart")!
        imageView.tintColor = .red
        return imageView
    }()
    
    private lazy var descInfoView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 10
        return view
    }()
    
    private lazy var descripName: UILabel = {
        let label = UILabel()
        label.text = "Latest Rowers"
        label.tintColor = .black
        label.font = UIFont(name:"Arial Bold", size: 10.0)
        return label
    }()

    private lazy var viewPodDescripName: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.layer.cornerRadius = 2
        return view
    }()
    
    private lazy var namesStar: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "star.fill")!
        imageView.layer.cornerRadius = 10
        imageView.tintColor = .systemOrange
        return imageView
    }()
    
    private lazy var namesStar2: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "star.fill")!
        imageView.layer.cornerRadius = 10
        imageView.tintColor = .systemOrange
        return imageView
    }()
    
    private lazy var namesStar3: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "star.fill")!
        imageView.layer.cornerRadius = 10
        imageView.tintColor = .systemOrange
        return imageView
    }()
    
    private lazy var userName: UILabel = {
        let label = UILabel()
        label.text = "Sarah Ofile"
        label.tintColor = .black
        label.font = UIFont(name:"Arial Bold", size: 8.0)
        return label
    }()
    
    private lazy var userText: UILabel = {
        let label = UILabel()
        label.text = "Find the best selling dishes kg fd."
        label.numberOfLines = 1
        label.tintColor = .placeholderText
        label.font = UIFont(name: "Avenir Light", size: 10.0)
        return label
    }()
    
    private lazy var userTextTime: UILabel = {
        let label = UILabel()
        label.text = "3 min ago."
        label.numberOfLines = 1
        label.tintColor = .placeholderText
        label.font = UIFont(name: "Avenir Light", size: 9.0)
        return label
    }()
    
    private lazy var viewPodUserName: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.layer.cornerRadius = 2
        return view
    }()
    
    private lazy var twoNamesStar: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "star.fill")!
        imageView.layer.cornerRadius = 10
        imageView.tintColor = .systemOrange
        return imageView
    }()
    
    private lazy var twoNamesStar2: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "star.fill")!
        imageView.layer.cornerRadius = 10
        imageView.tintColor = .systemOrange
        return imageView
    }()
    
    private lazy var twoNamesStar3: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "star.fill")!
        imageView.layer.cornerRadius = 10
        imageView.tintColor = .systemOrange
        return imageView
    }()
    
    private lazy var twoNamesStar4: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "star.fill")!
        imageView.layer.cornerRadius = 10
        imageView.tintColor = .systemOrange
        return imageView
    }()
    
    private lazy var twoNamesStar5: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "star.fill")!
        imageView.layer.cornerRadius = 10
        imageView.tintColor = .systemOrange
        return imageView
    }()
    
    private lazy var userName2: UILabel = {
        let label = UILabel()
        label.text = "James Atite"
        label.tintColor = .black
        label.font = UIFont(name:"Arial Bold", size: 8.0)
        return label
    }()
    
    private lazy var userText2: UILabel = {
        let label = UILabel()
        label.text = "Find the best selling dishes kg fd."
        label.numberOfLines = 1
        label.tintColor = .placeholderText
        label.font = UIFont(name: "Avenir Light", size: 10.0)
        return label
    }()
    
    private lazy var userTextTime2: UILabel = {
        let label = UILabel()
        label.text = "10 min ago."
        label.numberOfLines = 1
        label.tintColor = .placeholderText
        label.font = UIFont(name: "Avenir Light", size: 9.0)
        return label
    }()
    
    private lazy var ingredients: UILabel = {
        let label = UILabel()
        label.text = "Ingredients"
        label.tintColor = .black
        label.font = UIFont(name:"Arial Bold", size: 20.0)
        return label
    }()

    private lazy var ingeadientsImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "1")!
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 12
        return imageView
    }()
    
    private lazy var ingeadientsImageView2: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "1")!
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 12
        return imageView
    }()
    
    private lazy var ingeadientsImageView3: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "1")!
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 12
        return imageView
    }()
    
    private lazy var ingeadientsImageView4: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "1")!
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 12
        return imageView
    }()
    
    private lazy var additions: UILabel = {
        let label = UILabel()
        label.text = "Additions"
        label.tintColor = .black
        label.font = UIFont(name:"Arial Bold", size: 20.0)
        return label
    }()
    
    private lazy var textField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "  Meat"
        textField.layer.cornerRadius = 15
        textField.layer.borderWidth = 0.7
        textField.layer.borderColor = UIColor.systemOrange.cgColor
        return textField
    }()
    
    private lazy var textFieldButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "chevron.down"), for: .normal)
        button.tintColor = .systemOrange
        return button
    }()
    
    private lazy var tabView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemOrange
        view.layer.cornerRadius = 30
        return view
    }()
    
    private lazy var nFiveHundred: UILabel = {
        let label = UILabel()
        label.text = "#500"
        label.font = UIFont(name:"Arial Bold", size: 25.0)
        label.textColor = .white
        return label
    }()
    
    private lazy var tabInsideView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemOrange
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.white.cgColor
        view.layer.cornerRadius = 10
        return view
    }()
    
    private lazy var minusButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "minus"), for: .normal)
        button.tintColor = .white
        return button
    }()
    
    private lazy var count: UILabel = {
        let label = UILabel()
        label.text = "1"
        label.textColor = .white
        label.font = UIFont(name:"Arial Bold", size: 25.0)
        return label
    }()
    
    private lazy var plusButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "plus"), for: .normal)
        button.tintColor = .white
        return button
    }()
    
    private lazy var tabViewKorzina: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 22
        return view
    }()
    
    private lazy var tabViewKorzinaImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "cart.circle")!
        imageView.tintColor = .black
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        setupView()
        setupLayout()
    }
    
    private func setupView() {
        view.addSubview(mainImageView)
        mainImageView.addSubview(nameProductView)
        nameProductView.addSubview(nameProduct)
        mainImageView.addSubview(infoView)
        mainImageView.addSubview(betweenView)
        betweenView.addSubview(betweenImageView)
        betweenView.addSubview(betweenImageView2)
        betweenView.addSubview(betweenNumber)
        betweenView.addSubview(betweenImageView3)
        infoView.addSubview(descrip)
        infoView.addSubview(descText)
        mainImageView.addSubview(heartInfoView)
        heartInfoView.addSubview(heartImageView)
        infoView.addSubview(descInfoView)
        descInfoView.addSubview(descripName)
        descInfoView.addSubview(viewPodDescripName)
        descInfoView.addSubview(namesStar)
        descInfoView.addSubview(namesStar2)
        descInfoView.addSubview(namesStar3)
        descInfoView.addSubview(userName)
        descInfoView.addSubview(userText)
        descInfoView.addSubview(userTextTime)
        descInfoView.addSubview(viewPodUserName)
        descInfoView.addSubview(twoNamesStar)
        descInfoView.addSubview(twoNamesStar2)
        descInfoView.addSubview(twoNamesStar3)
        descInfoView.addSubview(twoNamesStar4)
        descInfoView.addSubview(twoNamesStar5)
        descInfoView.addSubview(userName2)
        descInfoView.addSubview(userText2)
        descInfoView.addSubview(userTextTime2)
        descInfoView.addSubview(ingredients)
        descInfoView.addSubview(ingeadientsImageView)
        descInfoView.addSubview(ingeadientsImageView2)
        descInfoView.addSubview(ingeadientsImageView3)
        descInfoView.addSubview(ingeadientsImageView4)
        descInfoView.addSubview(additions)
        descInfoView.addSubview(textField)
        textField.addSubview(textFieldButton)
        descInfoView.addSubview(tabView)
        tabView.addSubview(nFiveHundred)
        tabView.addSubview(tabInsideView)
        tabView.addSubview(minusButton)
        tabView.addSubview(count)
        tabView.addSubview(plusButton)
        tabView.addSubview(tabViewKorzina)
        tabViewKorzina.addSubview(tabViewKorzinaImage)
    }
    
    private func setupLayout() {
        mainImageView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        nameProductView.snp.makeConstraints { make in
            make.top.equalTo(mainImageView.snp.top).offset(100)
            make.right.equalTo(mainImageView.snp.right).offset(-10)
            make.height.equalTo(35)
            make.width.equalTo(130)
        }
        nameProduct.snp.makeConstraints { make in
            make.top.equalTo(mainImageView.snp.top).offset(50)
            make.right.equalTo(mainImageView.snp.right).offset(-20)
            make.bottom.equalTo(mainImageView.snp.bottom).offset(-750)
        }
        infoView.snp.makeConstraints { make in
            make.top.equalTo(mainImageView.snp.top).offset(350)
            make.left.equalTo(mainImageView.snp.left).offset(0)
            make.right.equalTo(mainImageView.snp.right).offset(0)
            make.bottom.equalTo(mainImageView.snp.bottom).offset(0)
        }
        betweenView.snp.makeConstraints { make in
            make.top.equalTo(mainImageView.snp.top).offset(330)
            make.left.equalTo(mainImageView.snp.left).offset(50)
            make.height.equalTo(50)
            make.width.equalTo(200)
        }
        betweenImageView.snp.makeConstraints { make in
            make.top.equalTo(betweenView.snp.top).offset(10)
            make.left.equalTo(mainImageView.snp.left).offset(70)
            make.height.equalTo(30)
            make.width.equalTo(30)
        }
        betweenImageView2.snp.makeConstraints { make in
            make.top.equalTo(betweenView.snp.top).offset(10)
            make.left.equalTo(betweenImageView.snp.left).offset(40)
            make.height.equalTo(30)
            make.width.equalTo(30)
        }
        betweenNumber.snp.makeConstraints { make in
            make.top.equalTo(betweenView.snp.top).offset(20)
            make.left.equalTo(betweenImageView2.snp.left).offset(50)
            make.height.equalTo(15)
            make.width.equalTo(30)
        }
        betweenImageView3.snp.makeConstraints { make in
            make.top.equalTo(betweenView.snp.top).offset(10)
            make.left.equalTo(betweenNumber.snp.left).offset(40)
            make.height.equalTo(30)
            make.width.equalTo(30)
        }
        descrip.snp.makeConstraints { make in
            make.top.equalTo(betweenView.snp.top).offset(50)
            make.left.equalTo(mainImageView.snp.left).offset(50)
            make.height.equalTo(50)
            make.width.equalTo(200)
        }
        descText.snp.makeConstraints { make in
            make.top.equalTo(descrip.snp.top).offset(40)
            make.left.equalTo(mainImageView.snp.left).offset(50)
            make.height.equalTo(120)
            make.width.equalTo(150)
        }
        heartInfoView.snp.makeConstraints { make in
            make.top.equalTo(mainImageView.snp.top).offset(330)
            make.left.equalTo(betweenView.snp.left).offset(310)
            make.height.equalTo(50)
            make.width.equalTo(50)
        }
        heartImageView.snp.makeConstraints { make in
            make.top.equalTo(mainImageView.snp.top).offset(335)
            make.left.equalTo(betweenView.snp.left).offset(315)
            make.height.equalTo(40)
            make.width.equalTo(40)
        }
        descInfoView.snp.makeConstraints { make in
            make.top.equalTo(betweenView.snp.top).offset(60)
            make.left.equalTo(descrip.snp.left).offset(210)
            make.height.equalTo(150)
            make.width.equalTo(150)
        }
        descripName.snp.makeConstraints { make in
            make.top.equalTo(descInfoView.snp.top).offset(0)
            make.left.equalTo(descrip.snp.left).offset(290)
            make.height.equalTo(30)
            make.width.equalTo(100)
        }
        viewPodDescripName.snp.makeConstraints { make in
            make.top.equalTo(descInfoView.snp.top).offset(22)
            make.left.equalTo(descrip.snp.left).offset(210)
            make.height.equalTo(1)
            make.width.equalTo(150)
        }
        namesStar.snp.makeConstraints { make in
            make.top.equalTo(viewPodDescripName.snp.top).offset(5)
            make.left.equalTo(descrip.snp.left).offset(300)
            make.height.equalTo(20)
            make.width.equalTo(20)
        }
        namesStar2.snp.makeConstraints { make in
            make.top.equalTo(viewPodDescripName.snp.top).offset(5)
            make.left.equalTo(descrip.snp.left).offset(320)
            make.height.equalTo(20)
            make.width.equalTo(20)
        }
        namesStar3.snp.makeConstraints { make in
            make.top.equalTo(viewPodDescripName.snp.top).offset(5)
            make.left.equalTo(descrip.snp.left).offset(340)
            make.height.equalTo(20)
            make.width.equalTo(20)
        }
        userName.snp.makeConstraints { make in
            make.top.equalTo(namesStar.snp.top).offset(20)
            make.left.equalTo(descrip.snp.left).offset(315)
            make.height.equalTo(10)
            make.width.equalTo(100)
        }
        userText.snp.makeConstraints { make in
            make.top.equalTo(userName.snp.top).offset(12)
            make.left.equalTo(descrip.snp.left).offset(210)
            make.height.equalTo(10)
            make.width.equalTo(150)
        }
        userTextTime.snp.makeConstraints { make in
            make.top.equalTo(userText.snp.top).offset(12)
            make.left.equalTo(descrip.snp.left).offset(315)
            make.height.equalTo(10)
            make.width.equalTo(100)
        }
        viewPodUserName.snp.makeConstraints { make in
            make.top.equalTo(userTextTime.snp.top).offset(15)
            make.left.equalTo(descrip.snp.left).offset(210)
            make.height.equalTo(1)
            make.width.equalTo(150)
        }
        twoNamesStar.snp.makeConstraints { make in
            make.top.equalTo(viewPodUserName.snp.top).offset(5)
            make.left.equalTo(descrip.snp.left).offset(260)
            make.height.equalTo(20)
            make.width.equalTo(20)
        }
        twoNamesStar2.snp.makeConstraints { make in
            make.top.equalTo(viewPodUserName.snp.top).offset(5)
            make.left.equalTo(descrip.snp.left).offset(280)
            make.height.equalTo(20)
            make.width.equalTo(20)
        }
        twoNamesStar3.snp.makeConstraints { make in
            make.top.equalTo(viewPodUserName.snp.top).offset(5)
            make.left.equalTo(descrip.snp.left).offset(300)
            make.height.equalTo(20)
            make.width.equalTo(20)
        }
        twoNamesStar4.snp.makeConstraints { make in
            make.top.equalTo(viewPodUserName.snp.top).offset(5)
            make.left.equalTo(descrip.snp.left).offset(320)
            make.height.equalTo(20)
            make.width.equalTo(20)
        }
        twoNamesStar5.snp.makeConstraints { make in
            make.top.equalTo(viewPodUserName.snp.top).offset(5)
            make.left.equalTo(descrip.snp.left).offset(340)
            make.height.equalTo(20)
            make.width.equalTo(20)
        }
        userName2.snp.makeConstraints { make in
            make.top.equalTo(twoNamesStar.snp.top).offset(20)
            make.left.equalTo(descrip.snp.left).offset(313)
            make.height.equalTo(10)
            make.width.equalTo(100)
        }
        userText2.snp.makeConstraints { make in
            make.top.equalTo(userName2.snp.top).offset(12)
            make.left.equalTo(descrip.snp.left).offset(210)
            make.height.equalTo(10)
            make.width.equalTo(150)
        }
        userTextTime2.snp.makeConstraints { make in
            make.top.equalTo(userText2.snp.top).offset(12)
            make.left.equalTo(descrip.snp.left).offset(312)
            make.height.equalTo(10)
            make.width.equalTo(100)
        }
        ingredients.snp.makeConstraints { make in
            make.top.equalTo(userTextTime2.snp.top).offset(20)
            make.left.equalTo(mainImageView.snp.left).offset(50)
            make.height.equalTo(20)
            make.width.equalTo(200)
        }
        ingeadientsImageView.snp.makeConstraints { make in
            make.top.equalTo(ingredients.snp.top).offset(40)
            make.left.equalTo(mainImageView.snp.left).offset(50)
            make.height.equalTo(50)
            make.width.equalTo(80)
        }
        ingeadientsImageView2.snp.makeConstraints { make in
            make.top.equalTo(ingredients.snp.top).offset(40)
            make.left.equalTo(ingeadientsImageView.snp.left).offset(92)
            make.height.equalTo(50)
            make.width.equalTo(80)
        }
        ingeadientsImageView3.snp.makeConstraints { make in
            make.top.equalTo(ingredients.snp.top).offset(40)
            make.left.equalTo(ingeadientsImageView2.snp.left).offset(92)
            make.height.equalTo(50)
            make.width.equalTo(80)
        }
        ingeadientsImageView4.snp.makeConstraints { make in
            make.top.equalTo(ingredients.snp.top).offset(40)
            make.left.equalTo(ingeadientsImageView3.snp.left).offset(92)
            make.height.equalTo(50)
            make.width.equalTo(80)
        }
        additions.snp.makeConstraints { make in
            make.top.equalTo(ingeadientsImageView.snp.top).offset(70)
            make.left.equalTo(mainImageView.snp.left).offset(50)
            make.height.equalTo(20)
            make.width.equalTo(200)
        }
        textField.snp.makeConstraints { make in
            make.top.equalTo(additions.snp.top).offset(40)
            make.left.equalTo(mainImageView.snp.left).offset(50)
            make.height.equalTo(40)
            make.width.equalTo(360)
        }
        textFieldButton.snp.makeConstraints { make in
            make.top.equalTo(additions.snp.top).offset(40)
            make.left.equalTo(mainImageView.snp.left).offset(365)
            make.height.equalTo(40)
            make.width.equalTo(40)
        }
        tabView.snp.makeConstraints { make in
            make.top.equalTo(textField.snp.top).offset(60)
            make.left.equalTo(mainImageView.snp.left).offset(50)
            make.height.equalTo(80)
            make.width.equalTo(360)
        }
        nFiveHundred.snp.makeConstraints { make in
            make.top.equalTo(tabView.snp.top).offset(13)
            make.left.equalTo(mainImageView.snp.left).offset(70)
            make.height.equalTo(60)
            make.width.equalTo(60)
        }
        tabInsideView.snp.makeConstraints { make in
            make.top.equalTo(tabView.snp.top).offset(15)
            make.left.equalTo(nFiveHundred.snp.left).offset(110)
            make.height.equalTo(50)
            make.width.equalTo(120)
        }
        minusButton.snp.makeConstraints { make in
            make.top.equalTo(tabView.snp.top).offset(13)
            make.left.equalTo(nFiveHundred.snp.left).offset(100)
            make.height.equalTo(60)
            make.width.equalTo(60)
        }
        count.snp.makeConstraints { make in
            make.top.equalTo(tabView.snp.top).offset(13)
            make.left.equalTo(minusButton.snp.left).offset(60)
            make.height.equalTo(60)
            make.width.equalTo(60)
        }
        plusButton.snp.makeConstraints { make in
            make.top.equalTo(tabView.snp.top).offset(13)
            make.left.equalTo(count.snp.left).offset(13)
            make.height.equalTo(60)
            make.width.equalTo(60)
        }
        tabViewKorzina.snp.makeConstraints { make in
            make.top.equalTo(tabView.snp.top).offset(15)
            make.left.equalTo(plusButton.snp.left).offset(100)
            make.height.equalTo(45)
            make.width.equalTo(45)
        }
        tabViewKorzinaImage.snp.makeConstraints { make in
            make.top.equalTo(tabView.snp.top).offset(15)
            make.left.equalTo(plusButton.snp.left).offset(100)
            make.height.equalTo(45)
            make.width.equalTo(45)
        }
    }

    
}
